param([switch]$Deploy)
$ErrorActionPreference='Stop'
$mod=Split-Path -Parent $PSScriptRoot
$game=Split-Path -Parent (Split-Path -Parent $mod)
$audit=Join-Path $mod 'audit/beutekugel_script_fix_2026-09-19'
$source=Join-Path $mod 'source/scripts'
$arc=Join-Path $mod 'resources/Scripts.arc'
$utf8=[Text.UTF8Encoding]::new($false)
if(Test-Path $audit){throw 'Already staged; refusing to overwrite backups'}
New-Item -ItemType Directory -Path "$audit/before","$source/game" -Force | Out-Null
Copy-Item -LiteralPath $arc -Destination "$audit/before/Scripts.arc"
# The existing ARC v3 uses four uncompressed contiguous entries. Modern
# ArchiveTool refuses this old archive; recover each exact entry from its index.
$bytes=[IO.File]::ReadAllBytes($arc)
function U32($offset){[BitConverter]::ToUInt32($bytes,$offset)}
if((U32 0) -ne 0x435241 -or (U32 4) -ne 3 -or (U32 8) -ne 4 -or (U32 12) -ne 0){throw 'Unexpected source ARC format'}
$strings=U32 24
$table=$strings+(U32 20)
$original=@{}
for($i=0;$i -lt 4;$i++){
 $p=$table+44*$i;$offset=U32 ($p+4);$size=U32 ($p+8);$rawSize=U32 ($p+12)
 if((U32 $p) -ne 1 -or $size -ne $rawSize -or $offset+$size -gt $strings){throw 'Unsupported ARC entry'}
 $name=[Text.Encoding]::UTF8.GetString($bytes,$strings+(U32 ($p+40)),(U32 ($p+36))).TrimEnd([char]0)
 if($name -notin @('game/utility.lua','game/modscript.lua','game/loot.lua','main.lua')){throw "Unexpected script $name"}
 $original[$name]=[Text.Encoding]::UTF8.GetString($bytes,$offset,$size)
 $dest=Join-Path $source $name
 if(Test-Path $dest){throw "Source exists: $dest"}
 [IO.File]::WriteAllText($dest,$original[$name],$utf8)
}
$manifest=Get-Content (Join-Path $mod 'audit/beutekugel_blueprints_2026-09-19/manifest.json') -Raw|ConvertFrom-Json
$records=@($manifest.Blueprints.Record | Sort-Object -Unique)
if($records.Count -ne 948){throw 'Unexpected blueprint inventory'}
$lua=[Collections.Generic.List[string]]::new()
$lua.Add('-- Complete base + GDX1 + GDX2 + GDX3 blueprint inventory. No level filter.')
$lua.Add('local blueprints = {')
foreach($r in $records){$lua.Add('    "'+$r+'",')}
$lua.Add('}')
$lua.Add(@'

-- Direct entity creation avoids the random-loot table and its recipe filtering.
-- Called exactly once by each of the two existing sphere-opening callbacks.
function gd.loot.dropGuaranteedBlueprint(objectId)
    local record = blueprints[math.random(1, #blueprints)]
    local coords = Destructible.Get(objectId):GetCoords()
    local created, item = pcall(Entity.Create, record)
    if created and item ~= nil then
        local placed = pcall(function() item:SetCoords(coords) end)
        if placed then
            print("[BeutekugelBlueprint] spawned " .. record)
            return
        end
    end
    Game.GetLocalPlayer():GiveItem(record, 1, false)
    print("[BeutekugelBlueprint] granted to inventory " .. record)
end

-- A failed reward must not stop the original sphere destruction and normal loot.
function gd.loot.tryDropGuaranteedBlueprint(objectId)
    local ok, message = pcall(gd.loot.dropGuaranteedBlueprint, objectId)
    if not ok then
        print("[BeutekugelBlueprint] ERROR: " .. tostring(message))
    end
end
'@)
[IO.File]::WriteAllLines((Join-Path $source 'game/beutekugel_blueprints.lua'),$lua,$utf8)
$main=$original['main.lua']+"`r`nScript.Load(`"scripts/game/beutekugel_blueprints.lua`")`r`n"
[IO.File]::WriteAllText((Join-Path $source 'main.lua'),$main,$utf8)
$loot=$original['game/loot.lua']
foreach($callback in 'popSphereOnSpawn','popSphereOnSpawnValuable'){
 $needle="function gd.loot.$callback(objectId)"
 if(([regex]::Matches($loot,[regex]::Escape($needle))).Count -ne 1){throw 'Callback mismatch'}
 $loot=$loot.Replace($needle,$needle+"`r`n`tgd.loot.tryDropGuaranteedBlueprint(objectId)")
}
[IO.File]::WriteAllText((Join-Path $source 'game/loot.lua'),$loot,$utf8)
# Restore original sphere loot configuration exactly; direct script supplies
# the additional blueprint. Retain dormant pool DBRs for historical auditing.
$before=Join-Path $mod 'audit/beutekugel_blueprints_2026-09-19/before/records/__mod/spheres/loot'
$changes=[Collections.Generic.List[object]]::new()
foreach($file in Get-ChildItem $before -Filter '*.dbr'){
 $target=Join-Path $mod ('database/records/__mod/spheres/loot/'+$file.Name)
 Copy-Item -LiteralPath $target -Destination (Join-Path "$audit/before" $file.Name)
 $old=@{};$new=@{}
 foreach($line in [IO.File]::ReadAllLines($target)){$p=$line -split ',',3;if($p.Count -ge 2){$old[$p[0]]=$p[1]}}
 foreach($line in [IO.File]::ReadAllLines($file.FullName)){$p=$line -split ',',3;if($p.Count -ge 2){$new[$p[0]]=$p[1]}}
 foreach($key in @($old.Keys+$new.Keys)|Sort-Object -Unique){if($old[$key] -cne $new[$key]){$changes.Add([pscustomobject]@{Record=$file.Name;Field=$key;Before=$old[$key];After=$new[$key]})}}
 Copy-Item -LiteralPath $file.FullName -Destination $target
 if((Get-FileHash $target).Hash -ne (Get-FileHash $file.FullName).Hash){throw 'Restore validation failed'}
}
[IO.File]::WriteAllText((Join-Path $audit 'dbr_changes.json'),($changes|ConvertTo-Json -Depth 4),$utf8)
$newArc=Join-Path $audit 'Scripts.arc'
& (Join-Path $PSScriptRoot 'pack_beutekugel_scripts.ps1') -SourceRoot $source -ArchivePath $newArc
if($LASTEXITCODE -and $LASTEXITCODE -ne 0){throw 'Script archive build failed'}
if($Deploy){Copy-Item -LiteralPath $newArc -Destination $arc}
"Restored 12 sphere DBRs; generated 5 Lua sources; packed and verified Scripts.arc. Deployed=$Deploy"
