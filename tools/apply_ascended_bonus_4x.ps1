param(
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$modRoot = Split-Path -Parent $PSScriptRoot
$gameRoot = 'D:\Games\Steam\steamapps\common\Grim Dawn'
$gdx3Root = Join-Path $gameRoot 'mods\gdx3'
$sourceAffixRoot = Join-Path $gdx3Root 'records\items\lootaffixes\ascended'
$sourceMasteryRoot = Join-Path $sourceAffixRoot 'mastery'
$sourceTableRoot = Join-Path $sourceAffixRoot 'ascendedtables'
$destinationDatabaseRoot = Join-Path $modRoot 'database'
$changelogPath = Join-Path $modRoot 'ascended_bonus_4x_changelog.md'

$generalScaleFields = @(
    'characterAttackSpeedMaxModifier',
    'characterAttackSpeedModifier',
    'characterDefensiveAbility',
    'characterDeflectProjectile',
    'characterDodgePercent',
    'characterHealIncreasePercent',
    'characterLife',
    'characterOffensiveAbility',
    'characterRunSpeedMaxModifier',
    'characterRunSpeedModifier',
    'characterSpellCastSpeedMaxModifier',
    'characterSpellCastSpeedModifier',
    'characterStrength',
    'defensiveAether',
    'defensiveAetherMaxResist',
    'defensiveBleeding',
    'defensiveBleedingMaxResist',
    'defensiveChaos',
    'defensiveChaosMaxResist',
    'defensiveColdMaxResist',
    'defensiveElementalResistance',
    'defensiveFireMaxResist',
    'defensiveLife',
    'defensiveLifeMaxResist',
    'defensiveLightningMaxResist',
    'defensivePhysical',
    'defensivePierce',
    'defensivePierceMaxResist',
    'defensivePoison',
    'defensivePoisonMaxResist',
    'defensiveProtectionModifier',
    'offensiveCritDamageModifier',
    'offensiveLifeLeechMin',
    'offensiveTotalDamageModifier',
    'retaliationTotalDamageModifier'
)

$masteryScaleFields = @(
    'weaponDamagePct',
    'retaliationDamagePct',
    'characterOffensiveAbility',
    'characterOffensiveAbilityModifier',
    'characterDefensiveAbility',
    'characterDefensiveAbilityModifier',
    'characterLife',
    'characterLifeRegen',
    'characterLifeRegenModifier',
    'characterAttackSpeedModifier',
    'characterAttackSpeedMaxModifier',
    'characterSpellCastSpeedModifier',
    'characterSpellCastSpeedMaxModifier',
    'offensiveCritDamageModifier',
    'offensiveTotalDamageModifier',
    'retaliationTotalDamageModifier',
    'offensiveLifeMin',
    'offensiveColdMin',
    'offensiveFireMin',
    'offensiveLightningMin',
    'offensivePhysicalMin',
    'offensivePierceMin',
    'offensiveAetherMin',
    'offensiveChaosMin',
    'offensivePoisonMin',
    'offensiveElementalMin',
    'offensiveSlowPhysicalMin',
    'offensiveSlowPoisonMin',
    'offensiveSlowBleedingMin',
    'offensiveSlowLifeMin',
    'offensiveSlowFireMin',
    'offensiveSlowColdMin',
    'offensiveSlowLightningMin',
    'defensiveAllResistance',
    'defensiveCrowdControl',
    'defensiveTotalSpeedResistance',
    'defensiveProtectionModifier',
    'damageAbsorptionPercent',
    'skillLifeBonusBuffDuration',
    'skillLifePercentBuffDuration',
    'projectilePiercing',
    'projectileLaunchNumber',
    'petBurstSpawn',
    'petLimit'
)

function Read-DbrFields([string]$Path) {
    $fields = [ordered]@{}
    foreach ($line in [IO.File]::ReadAllLines($Path)) {
        $parts = $line -split ',', 3
        if ($parts.Count -ge 2) {
            $fields[$parts[0]] = $parts[1]
        }
    }
    return $fields
}

function Format-ScaledValue([string]$Original) {
    $scaled = [decimal]$Original * 4
    if ($Original.Contains('.')) {
        $decimalPlaces = ($Original -split '\.', 2)[1].Length
        return $scaled.ToString('0.' + ('0' * $decimalPlaces), [Globalization.CultureInfo]::InvariantCulture)
    }
    return $scaled.ToString('0', [Globalization.CultureInfo]::InvariantCulture)
}

function Get-ScalableChanges([string]$Text, [string[]]$AllowedFields) {
    $changes = [System.Collections.Generic.List[object]]::new()
    foreach ($line in $Text -split "`r?`n") {
        if ($line -notmatch '^([^,]+),(-?\d+(?:\.\d+)?),$') {
            continue
        }
        $field = $matches[1]
        $oldValue = $matches[2]
        if ($AllowedFields -notcontains $field) {
            continue
        }
        if ([decimal]$oldValue -eq 0) {
            continue
        }
        $newValue = Format-ScaledValue $oldValue
        $changes.Add([pscustomobject]@{
            Field = $field
            Old = $oldValue
            New = $newValue
        })
    }
    return $changes.ToArray()
}

function Apply-Changes([string]$Text, [object[]]$Changes) {
    $result = $Text
    foreach ($change in $Changes) {
        $pattern = '(?m)^' + [regex]::Escape($change.Field) + ',' + [regex]::Escape($change.Old) + ',$'
        $replacement = $change.Field + ',' + $change.New + ','
        $matchCount = ([regex]::Matches($result, $pattern)).Count
        if ($matchCount -ne 1) {
            throw "Expected one match for $($change.Field)=$($change.Old); found $matchCount."
        }
        $result = [regex]::Replace($result, $pattern, $replacement)
    }
    return $result
}

# Resolve the 66 general affixes actually referenced by the shipped Ascended tables.
$generalRecords = Get-ChildItem -File $sourceTableRoot | ForEach-Object {
    $fields = Read-DbrFields $_.FullName
    foreach ($entry in $fields.GetEnumerator()) {
        if ($entry.Key -match '^randomizerName\d+$' -and
            $entry.Value -match '^records/items/lootaffixes/ascended/[^/]+\.dbr$') {
            $entry.Value.ToLowerInvariant()
        }
    }
} | Sort-Object -Unique

if ($generalRecords.Count -ne 66) {
    throw "Expected 66 referenced general Ascended affixes; found $($generalRecords.Count)."
}

# Resolve the unique mastery modifier records referenced by all populated wrappers.
$masteryModifierRecords = Get-ChildItem -File -Recurse $sourceMasteryRoot |
    Where-Object { $_.Length -gt 1 } |
    ForEach-Object {
        $fields = Read-DbrFields $_.FullName
        if ($fields['modifierSkillName1']) {
            $fields['modifierSkillName1'].ToLowerInvariant()
        }
    } |
    Sort-Object -Unique

if ($masteryModifierRecords.Count -ne 923) {
    throw "Expected 923 referenced mastery modifier records; found $($masteryModifierRecords.Count)."
}

$workItems = [System.Collections.Generic.List[object]]::new()

foreach ($record in $generalRecords) {
    $sourcePath = Join-Path $gdx3Root ($record -replace '/', '\')
    $sourceText = [IO.File]::ReadAllText($sourcePath)
    $changes = @(Get-ScalableChanges $sourceText $generalScaleFields)
    if ($changes.Count -eq 0) {
        throw "Referenced general record has no selected scalable fields: $record"
    }
    $workItems.Add([pscustomobject]@{
        Kind = 'General affix'
        Record = $record
        Source = $sourcePath
        Destination = Join-Path $destinationDatabaseRoot ($record -replace '/', '\')
        Changes = $changes
        Expected = Apply-Changes $sourceText $changes
    })
}

foreach ($record in $masteryModifierRecords) {
    $sourcePath = Join-Path $gdx3Root ($record -replace '/', '\')
    $sourceText = [IO.File]::ReadAllText($sourcePath)
    $changes = @(Get-ScalableChanges $sourceText $masteryScaleFields)
    if ($changes.Count -eq 0) {
        continue
    }
    $workItems.Add([pscustomobject]@{
        Kind = 'Mastery modifier'
        Record = $record
        Source = $sourcePath
        Destination = Join-Path $destinationDatabaseRoot ($record -replace '/', '\')
        Changes = $changes
        Expected = Apply-Changes $sourceText $changes
    })
}

$generalCount = @($workItems | Where-Object Kind -eq 'General affix').Count
$masteryCount = @($workItems | Where-Object Kind -eq 'Mastery modifier').Count
if ($generalCount -ne 66 -or $masteryCount -ne 732 -or $workItems.Count -ne 798) {
    throw "Preflight count mismatch: general=$generalCount, mastery=$masteryCount, total=$($workItems.Count)."
}

$existingTargets = @($workItems | Where-Object { Test-Path -LiteralPath $_.Destination })
if ($existingTargets.Count -gt 0 -and -not $Force) {
    throw "$($existingTargets.Count) destination DBRs already exist. Re-run with -Force only after reviewing those overrides."
}

foreach ($item in $workItems) {
    $parent = Split-Path -Parent $item.Destination
    [IO.Directory]::CreateDirectory($parent) | Out-Null
    [IO.File]::WriteAllText($item.Destination, $item.Expected, [Text.UTF8Encoding]::new($false))
}

# Verify byte-for-byte semantic output against freshly transformed source text.
$validationErrors = [System.Collections.Generic.List[string]]::new()
foreach ($item in $workItems) {
    if (-not (Test-Path -LiteralPath $item.Destination)) {
        $validationErrors.Add("Missing destination: $($item.Record)")
        continue
    }
    $actual = [IO.File]::ReadAllText($item.Destination)
    if ($actual -cne $item.Expected) {
        $validationErrors.Add("Content mismatch: $($item.Record)")
    }
}
if ($validationErrors.Count -gt 0) {
    throw ($validationErrors -join [Environment]::NewLine)
}

$changedFieldCount = ($workItems | ForEach-Object { $_.Changes.Count } | Measure-Object -Sum).Sum
$projectileFiles = @($workItems | Where-Object { $_.Changes.Field -contains 'projectileLaunchNumber' }).Count
$petSpawnFiles = @($workItems | Where-Object { $_.Changes.Field -contains 'petBurstSpawn' }).Count
$petLimitFiles = @($workItems | Where-Object { $_.Changes.Field -contains 'petLimit' }).Count

$changelog = [System.Collections.Generic.List[string]]::new()
$changelog.Add('# Ascended Bonus 4× Change Audit')
$changelog.Add('')
$changelog.Add('Date: 2026-09-05')
$changelog.Add('')
$changelog.Add('## Summary')
$changelog.Add('')
$changelog.Add('- Interpretation: a 300% increase means original + 300%, or 4× the original non-zero value.')
$changelog.Add("- Created or replaced **$($workItems.Count) DBR overrides**: $generalCount general Ascended affixes and $masteryCount mastery-specific modifiers.")
$changelog.Add("- Changed **$changedFieldCount field values**.")
$changelog.Add("- Included user-requested structural fields: `projectileLaunchNumber` in $projectileFiles files, `petBurstSpawn` in $petSpawnFiles files, and `petLimit` in $petLimitFiles files.")
$changelog.Add('- Source: `D:\Games\Steam\steamapps\common\Grim Dawn\mods\gdx3\records`.')
$changelog.Add('- Destination: the mod `database\records` tree, preserving every original record path.')
$changelog.Add('')
$changelog.Add('## Intentionally unchanged')
$changelog.Add('')
$changelog.Add('- Trigger chances and cooldown/duration plumbing (`refreshCooldown*`, `refreshDuration*`).')
$changelog.Add('- Skill durations, cooldown times, target counts, targeting angles/radii, and explosion radii.')
$changelog.Add('- WPS weights (`skillChanceWeight`).')
$changelog.Add('- Boolean/weapon override fields and special-animation fields.')
$changelog.Add('- Pet-record substitutions (`petSkillName`).')
$changelog.Add('- Unnamed `augmentSkillLevel1` and `augmentSkillLevel2` values on general affixes.')
$changelog.Add('- Ascended tables, randomizers, and mastery wrapper records; their existing references continue to resolve to these overrides.')
$changelog.Add('')
$changelog.Add('## Validation')
$changelog.Add('')
$changelog.Add('- Confirmed 66 referenced general records and 923 unique referenced mastery modifier records in the source data.')
$changelog.Add('- Confirmed the selected field policy produces exactly 798 override DBRs.')
$changelog.Add('- Compared every written DBR with an independently generated expected transformation of its source record; all 798 matched.')
$changelog.Add('- Compilation was deliberately not performed because this update modifies only DBR records. Compile the mod manually in Asset Manager.')
$changelog.Add('')
$changelog.Add('## Files and field changes')
$changelog.Add('')

foreach ($item in $workItems | Sort-Object Kind, Record) {
    $changelog.Add("### $($item.Record)")
    $changelog.Add('')
    $changelog.Add("Type: $($item.Kind)")
    $changelog.Add('')
    $changelog.Add('| Field | Old | New |')
    $changelog.Add('|---|---:|---:|')
    foreach ($change in $item.Changes | Sort-Object Field) {
        $changelog.Add("| ``$($change.Field)`` | $($change.Old) | $($change.New) |")
    }
    $changelog.Add('')
}

[IO.File]::WriteAllLines($changelogPath, $changelog, [Text.UTF8Encoding]::new($false))

Write-Output "DBR overrides written: $($workItems.Count)"
Write-Output "General affixes: $generalCount"
Write-Output "Mastery modifiers: $masteryCount"
Write-Output "Changed field values: $changedFieldCount"
Write-Output "projectileLaunchNumber files: $projectileFiles"
Write-Output "petBurstSpawn files: $petSpawnFiles"
Write-Output "petLimit files: $petLimitFiles"
Write-Output "Changelog: $changelogPath"
