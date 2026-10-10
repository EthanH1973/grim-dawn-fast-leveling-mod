param(
    [Parameter(Mandatory=$true)][string]$ReferenceRoot,
    [switch]$Apply
)
$ErrorActionPreference = 'Stop'
$mod = Split-Path -Parent $PSScriptRoot
$game = Split-Path -Parent (Split-Path -Parent $mod)
$outRoot = Join-Path $mod 'database'
$poolRoot = 'records/__mod/spheres/loot/blueprints_all_levels'
$auditRoot = Join-Path $mod 'audit/beutekugel_blueprints_2026-09-19'
$logPath = Join-Path $mod 'beutekugel_blueprints_changelog.md'
$utf8 = [Text.UTF8Encoding]::new($false)
function Fields([string]$path) {
    $result = [ordered]@{}
    foreach ($line in [IO.File]::ReadAllLines($path)) {
        $p = $line -split ',',3
        if ($p.Count -ge 2) { $result[$p[0]] = $p[1] }
    }
    return $result
}
function Serialize($fields) {
    return (($fields.GetEnumerator() | ForEach-Object { $_.Key + ',' + $_.Value + ',' }) -join "`r`n") + "`r`n"
}
# Fresh installed database extracts, with normal DLC override precedence.
$sources = @()
foreach ($pack in @('base','gdx1','gdx2','gdx3')) {
    $path = Join-Path $ReferenceRoot "$pack/records"
    if (!(Test-Path -LiteralPath $path)) { throw "Missing source: $path" }
    $sources += [pscustomobject]@{ Pack=$pack; Root=$path }
}
$sources += [pscustomobject]@{Pack='mod';Root=(Join-Path $outRoot 'records')}
$allRecords = @{}
$candidates = @{}
foreach ($source in $sources) {
    foreach ($file in Get-ChildItem -LiteralPath $source.Root -Filter '*.dbr' -File -Recurse) {
        $record = 'records/' + $file.FullName.Substring($source.Root.Length+1).Replace('\','/').ToLowerInvariant()
        $allRecords[$record] = $file.FullName
        if ($record.StartsWith('records/items/crafting/blueprints/')) {
            $candidates[$record] = [pscustomobject]@{Record=$record;Pack=$source.Pack;Path=$file.FullName;Fields=(Fields $file.FullName)}
        }
    }
}
$included = @()
$excluded = @()
foreach ($entry in $candidates.Values | Sort-Object Record) {
    $f = $entry.Fields
    $reason = ''
    if ($f['FileDescription'] -eq 'TEST' -or $f['description'] -eq 'tagTestBlueprint' -or $entry.Record -match '/blueprint_(test_|loottabletest)') { $reason='Developer test blueprint' }
    elseif ($f['cannotPickUp'] -eq '1') { $reason='Not a pickup item' }
    elseif ($f['Class'] -eq 'ItemArtifactFormula') {
        if (!$f['artifactName']) { $reason='No crafting output' }
        elseif (!$allRecords.ContainsKey($f['artifactName'].ToLowerInvariant())) { $reason='Invalid recipe: missing crafting output '+$f['artifactName'] }
    }
    elseif ($f['Class'] -eq 'OneShot_SkillUnlock' -and $entry.Record.Contains('/potions/')) {
        if (!$f['skillNames']) { throw "Missing potion unlock: $($entry.Record)" }
        foreach ($skill in $f['skillNames'] -split ';') {
            if (!$allRecords.ContainsKey($skill.ToLowerInvariant())) { throw "Missing skill: $skill" }
        }
    }
    else { $reason='Internal crafting operation: ' + $f['Class'] }
    if ($reason) { $excluded += [pscustomobject]@{Record=$entry.Record;Reason=$reason} }
    else { $included += $entry }
}
if ($included.Count -lt 500) { throw 'Unexpectedly small blueprint inventory' }
# The installed fixed-weight template allows 30 entries. Every node is weighted
# by its number of descendant blueprints, giving each blueprint weight 1/N.
$template = Join-Path $game 'database/templates/lootitemtable_fixedweight.tpl'
$capacity = ([regex]::Matches([IO.File]::ReadAllText($template),'name = "lootName(\d+)"') | ForEach-Object {[int]$_.Groups[1].Value} | Measure-Object -Maximum).Maximum
if ($capacity -ne 30) { throw "Unexpected fixed table capacity: $capacity" }
$plans = [Collections.Generic.List[object]]::new()
function Add-Table([string]$record, $children) {
    $fields = [ordered]@{templateName='database/templates/lootitemtable_fixedweight.tpl';Class='LootItemTable_FixedWeight';noPrefixNoSuffix='100000';FileDescription='Beutekugel blueprints - fixed weights - all levels'}
    $i=0
    foreach ($child in $children) { $i++; $fields["lootName$i"]=$child.Record; $fields["lootWeight$i"]=[string]$child.Count }
    $plans.Add([pscustomobject]@{Record=$record;Fields=$fields;Old=$null;Text=(Serialize $fields);Kind='New fixed-weight pool'})
}
$nodes = @($included | ForEach-Object {[pscustomobject]@{Record=$_.Record;Count=1}})
$depth=0
while ($nodes.Count -gt $capacity) {
    $parents=@()
    for ($start=0; $start -lt $nodes.Count; $start += $capacity) {
        $end=[Math]::Min($start+$capacity-1,$nodes.Count-1)
        $children=@($nodes[$start..$end])
        $record=('{0}/pool_{1}_{2:D3}.dbr' -f $poolRoot,$depth,[int]($start/$capacity))
        Add-Table $record $children
        $parents += [pscustomobject]@{Record=$record;Count=($children | Measure-Object Count -Sum).Sum}
    }
    $nodes=$parents
    $depth++
}
$rootRecord="$poolRoot/pool_all.dbr"
Add-Table $rootRecord $nodes
$sphereFiles=@(Get-ChildItem -LiteralPath (Join-Path $outRoot 'records/__mod/spheres/loot') -Filter 'loot_*.dbr' -File | Sort-Object Name)
if ($sphereFiles.Count -ne 12) { throw "Expected 12 sphere loot records, found $($sphereFiles.Count)" }
foreach ($file in $sphereFiles) {
    $old=Fields $file.FullName
    $f=Fields $file.FullName
    if ($f['templateName'] -ne 'database/templates/fixeditemloot.tpl') { throw "Unexpected sphere template: $file" }
    if ([IO.File]::ReadAllText($file.FullName).Contains($poolRoot)) { throw 'Already applied; refusing to add another drop' }
    $slot=0
    # Magical spheres already have a blueprint-only group: replace its old
    # level-filtered pool as well, so additional blueprint rolls are level-free.
    if ($file.Name -eq 'loot_magical.dbr') { $slot=4 }
    else {
        foreach ($g in 5,6,4,3,2) {
            $active=$false
            for ($j=1;$j -le 6;$j++) {
                if ($f["loot${g}Name$j"] -and [int]$f["loot${g}Weight$j"] -gt 0) { $active=$true }
            }
            if (!$active) { $slot=$g; break }
        }
    }
    if (!$slot) { throw "No unused group: $file" }
    for ($g=1;$g -le 6;$g++) {
        $field="loot${g}Chance"
        # Installed fixeditemloot.tpl defaults each missing Chance array to 100.
        $previous=if ($f.Contains($field)) {[string]$f[$field]} else {'100.000000'}
        $f[$field]='0.000000;'+$previous
    }
    if ($file.Name -eq 'loot_magical.dbr') {
        $f["loot${slot}Chance"]='100.000000;'+$old["loot${slot}Chance"]
    } else {
        # Explicit zeros cover all old drop positions, including random's max 60.
        $f["loot${slot}Chance"]='100.000000;'+((@('0.000000')*128)-join ';')
    }
    for ($j=1;$j -le 6;$j++) {
        $f["loot${slot}Weight$j"]=if ($j -eq 1) {'1'} else {'0'}
        if ($j -eq 1) {$f["loot${slot}Name$j"]=$rootRecord}
        elseif ($f.Contains("loot${slot}Name$j")) {$f.Remove("loot${slot}Name$j")}
    }
    foreach ($key in 'numSpawnMinEquation','numSpawnMaxEquation') {
        if (!$old[$key]) {throw "Missing $key in $file"}
        $f[$key]='('+$old[$key]+')+1'
    }
    $record=$file.FullName.Substring($outRoot.Length+1).Replace('\','/')
    $plans.Add([pscustomobject]@{Record=$record;Fields=$f;Old=$old;Text=(Serialize $f);Kind='Updated sphere loot';Slot=$slot})
}
# Preflight every reference and drop position before writing anything.
$newRecords=@{}; foreach ($plan in $plans) {$newRecords[$plan.Record]=$plan}
foreach ($plan in $plans) {
    if ($plan.Kind -eq 'New fixed-weight pool') {
        if ([int]$plan.Fields['noPrefixNoSuffix'] -le 0) {throw 'Pool lacks a positive plain-item outcome weight'}
        if (Test-Path -LiteralPath (Join-Path $outRoot $plan.Record)) {throw "Target exists: $($plan.Record)"}
        foreach ($key in $plan.Fields.Keys | Where-Object {$_ -match '^lootName'}) {
            $ref=$plan.Fields[$key]
            if (!$newRecords.ContainsKey($ref) -and !$allRecords.ContainsKey($ref)) {throw "Missing reference $ref"}
        }
    } else {
        for ($g=1;$g -le 6;$g++) {
            $first=($plan.Fields["loot${g}Chance"] -split ';')[0]
            if ([decimal]$first -ne $(if ($g -eq $plan.Slot) {100} else {0})) {throw 'First-drop isolation failed'}
        }
        $sphereName=[IO.Path]::GetFileName($plan.Record).Replace('loot_','sphere_instapop_loot_')
        $container=Fields (Join-Path $outRoot "records/__mod/spheres/$sphereName")
        if ($container['lootTable'] -ne $plan.Record -or [int]$container['lootChance'] -ne 100) {throw "Container not guaranteed: $sphereName"}
    }
}
$packCounts=$included | Group-Object Pack | Sort-Object Name
"Blueprints=$($included.Count); pool tables=$(@($plans | Where-Object Kind -eq 'New fixed-weight pool').Count); sphere edits=12; exclusions=$($excluded.Count)"
$packCounts | ForEach-Object {"$($_.Name)=$($_.Count)"}
if (!$Apply) {return}
if (Test-Path -LiteralPath $auditRoot) {throw "Audit directory already exists: $auditRoot"}
New-Item -ItemType Directory -Path $auditRoot | Out-Null
$log=[Collections.Generic.List[string]]::new()
$log.Add('# Beutekugel all-level blueprint audit - 2026-09-19')
$log.Add('')
$log.Add("12 Beutekugel variants now reserve one additional first drop exclusively for the shared blueprint pool. $($included.Count) unique blueprint records have equal table-selection weight (1/$($included.Count)) at every character level. Sources were freshly extracted from the installed base, GDX1, GDX2 and GDX3 databases, overlaid in that order, then by mod overrides.")
$log.Add('')
$log.Add('The first-drop weights are 100 for the blueprint group and zero for every other group. Existing drop-position arrays are shifted right; both spawn-count equations increase by one. Magical spheres also use the shared pool for their existing extra blueprint rolls. Other loot groups retain their previous items and weights. Blueprint records, crafting requirements, enemy records and shared vanilla loot tables are not edited.')
$log.Add('')
$log.Add('Fixed-weight tables bypass both LevelTable selection and dynamic item-level weighting. Parent weights equal descendant counts, avoiding bias from a smaller final leaf. The installed template limit is 30 entries per table. Valid unnamed ItemArtifactFormula recipes (including awakened crafting recipes) are included; description tags are not required. All potion OneShot_SkillUnlock blueprints are included. Sandbox prototypes, developer test blueprints and non-blueprint internal ascension/reroll/transmutation operations are excluded.')
$log.Add('')
$log.Add('This guarantees a blueprint selection in the DBR loot configuration, not an unlearned recipe. Engine handling of learned recipes, multiplayer ownership and visible drops requires in-game verification. No game session or compilation was performed. Compile manually in Asset Manager and test level 1 and level 100 characters, including a character with known recipes.')
$log.Add('')
$log.Add('Loot-position semantics reference: [Crate developer explanation](https://forums.crateentertainment.com/t/question-on-modifying-loottables/33001/7).')
$log.Add('')
$log.Add('## Coverage by effective source')
$log.Add('')
foreach ($count in $packCounts) {$log.Add("- $($count.Name): $($count.Count)")}
$log.Add('')
$log.Add('## DBR field changes')
$log.Add('')
foreach ($plan in $plans) {
    $path=Join-Path $outRoot $plan.Record
    if ($plan.Old) {
        $backup=Join-Path $auditRoot ('before/'+$plan.Record)
        New-Item -ItemType Directory -Path (Split-Path -Parent $backup) -Force | Out-Null
        Copy-Item -LiteralPath $path -Destination $backup
    }
    New-Item -ItemType Directory -Path (Split-Path -Parent $path) -Force | Out-Null
    [IO.File]::WriteAllText($path,$plan.Text,$utf8)
    if ([IO.File]::ReadAllText($path) -cne $plan.Text) {throw "Write verification failed: $path"}
    $log.Add("### $($plan.Record)")
    $log.Add('')
    $log.Add('| Field | Before | After |')
    $log.Add('|---|---|---|')
    $keys=@($plan.Fields.Keys)
    if ($plan.Old) {$keys+=@($plan.Old.Keys)}
    foreach ($key in $keys | Sort-Object -Unique) {
        $before=if ($plan.Old -and $plan.Old.Contains($key)) {[string]$plan.Old[$key]} else {'(absent)'}
        $after=if ($plan.Fields.Contains($key)) {[string]$plan.Fields[$key]} else {'(removed)'}
        if ($before -cne $after) {$log.Add('| '+$key+' | '+$before+' | '+$after+' |')}
    }
    $log.Add('')
}
$log.Add('## Included blueprints (complete inventory)')
$log.Add('')
$log.Add('| Record | Effective source | Class |')
$log.Add('|---|---|---|')
foreach ($entry in $included) {$log.Add('| '+$entry.Record+' | '+$entry.Pack+' | '+$entry.Fields['Class']+' |')}
$log.Add('')
$log.Add('## Excluded internal records')
$log.Add('')
foreach ($entry in $excluded) {$log.Add('- '+$entry.Record+': '+$entry.Reason)}
$log.Add('')
$log.Add('## Supporting files and verification')
$log.Add('')
$log.Add('- tools/apply_beutekugel_blueprints.ps1: retained generator; default is dry-run, -Apply writes once and refuses repeat application.')
$log.Add('- audit/beutekugel_blueprints_2026-09-19/before/: byte-preserving backups of the 12 modified loot DBRs, at their original relative record paths.')
$log.Add('- audit/beutekugel_blueprints_2026-09-19/manifest.json: complete blueprint inventory, exclusions, source database hashes and output hashes.')
$log.Add('- beutekugel_blueprints_changelog.md: this complete field-level audit.')
$log.Add('- Preflight: all pool references resolve; all blueprint crafting outputs and potion unlock skills resolve; all 12 containers use the expected loot record with lootChance=100; exclusive first-drop selection verified; all written DBRs round-trip exactly.')
$log.Add('- No existing DBRs other than the 12 sphere loot files were changed. No files deleted. Compilation deliberately not performed; compile the mod manually.')
[IO.File]::WriteAllLines($logPath,$log,$utf8)
$hashes=foreach($plan in $plans){[pscustomobject]@{Record=$plan.Record;SHA256=(Get-FileHash -LiteralPath (Join-Path $outRoot $plan.Record)).Hash}}
$sourceHashes=foreach($pack in 'base','gdx1','gdx2','gdx3'){
    $arz=if($pack -eq 'base'){Join-Path $game 'database/database.arz'}else{Join-Path $game "$pack/database/$pack.arz"}
    [pscustomobject]@{Pack=$pack;Path=$arz;SHA256=(Get-FileHash -LiteralPath $arz).Hash}
}
$manifest=[ordered]@{Date='2026-09-19';BlueprintCount=$included.Count;Blueprints=@($included|ForEach-Object{[ordered]@{Record=$_.Record;Pack=$_.Pack;Class=$_.Fields['Class']}});Excluded=$excluded;SourceHashes=$sourceHashes;OutputHashes=$hashes}
[IO.File]::WriteAllText((Join-Path $auditRoot 'manifest.json'),($manifest|ConvertTo-Json -Depth 8),$utf8)
"Applied $($plans.Count) DBRs. Audit: $logPath"
