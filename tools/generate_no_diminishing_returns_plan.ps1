param(
    [string]$OutputPath = (Join-Path (Split-Path $PSScriptRoot -Parent) 'no_diminishing_returns_skill_plan.md'),
    [string]$TagRoot = (Join-Path $env:TEMP 'codex-gd-skill-plan-tags')
)

$ErrorActionPreference = 'Stop'
$invariant = [System.Globalization.CultureInfo]::InvariantCulture
$modRoot = Split-Path $PSScriptRoot -Parent
$gameRoot = Split-Path (Split-Path $modRoot -Parent) -Parent

$classNames = @{
    '01' = 'Soldier'
    '02' = 'Demolitionist'
    '03' = 'Occultist'
    '04' = 'Nightblade'
    '05' = 'Arcanist'
    '06' = 'Shaman'
    '07' = 'Inquisitor'
    '08' = 'Necromancer'
    '09' = 'Oathkeeper'
    '10' = 'Berserker'
}

$layers = @(
    [pscustomobject]@{ Name = 'Base game'; Root = (Join-Path $gameRoot 'database') }
    [pscustomobject]@{ Name = 'Ashes of Malmouth'; Root = (Join-Path $gameRoot 'mods\gdx1') }
    [pscustomobject]@{ Name = 'Forgotten Gods'; Root = (Join-Path $gameRoot 'mods\gdx2') }
    [pscustomobject]@{ Name = 'Fangs of Asterkarn'; Root = (Join-Path $gameRoot 'mods\gdx3') }
    [pscustomobject]@{ Name = 'Current mod override'; Root = (Join-Path $modRoot 'database') }
)

function Read-Dbr {
    param([string]$Path)

    $fields = [ordered]@{}
    foreach ($line in [System.IO.File]::ReadLines($Path)) {
        $comma = $line.IndexOf(',')
        if ($comma -lt 1) { continue }
        $name = $line.Substring(0, $comma)
        $value = $line.Substring($comma + 1).TrimEnd(',')
        $fields[$name] = $value
    }
    return $fields
}

function Convert-ToNumberArray {
    param([string]$Value)

    if ([string]::IsNullOrWhiteSpace($Value)) { return $null }
    $result = [System.Collections.Generic.List[double]]::new()
    # Grim Dawn DBRs store level arrays with semicolons inside the comma-delimited field.
    foreach ($part in $Value.Split(';')) {
        if ([string]::IsNullOrWhiteSpace($part)) { continue }
        $number = 0.0
        if (-not [double]::TryParse($part, [System.Globalization.NumberStyles]::Float, $invariant, [ref]$number)) {
            return $null
        }
        $result.Add($number)
    }
    return $result.ToArray()
}

function Clean-TooltipText {
    param([string]$Text)

    if ([string]::IsNullOrWhiteSpace($Text)) { return '' }
    $clean = $Text -replace '\^[A-Za-z]', ''
    $clean = $clean -replace '\\n|\{\^n\}|<br\s*/?>', ' '
    $clean = $clean -replace '\s+', ' '
    return $clean.Trim()
}

function Resolve-Tag {
    param([string]$Tag)

    if ([string]::IsNullOrWhiteSpace($Tag)) { return '' }
    if ($script:tags.ContainsKey($Tag)) { return (Clean-TooltipText $script:tags[$Tag]) }
    return $Tag
}

function Format-Number {
    param([double]$Number)

    if ([math]::Abs($Number) -lt 0.0000005) { $Number = 0 }
    if ([math]::Abs($Number - [math]::Round($Number)) -lt 0.000001) {
        return ([math]::Round($Number)).ToString('0', $invariant)
    }
    return $Number.ToString('0.###', $invariant)
}

function Get-Unit {
    param([string]$Field)

    if ($Field -eq 'skillManaCost') { return ' Energy' }
    if ($Field -match 'Radius$') { return ' m' }
    if ($Field -match '(CooldownTime|ActiveDuration)$') { return ' s' }
    if ($Field -match '(DurationMin|DurationMax)$' -and $Field -notmatch 'Modifier') { return ' s' }
    if ($Field -match '(Pct|Percent|Modifier|Chance|Resistance|Resist|Speed|AbsorptionPercent|LifeLeech|Fumble|Taunt)' -or
        $Field -match '^defensive(?!Physical$)' -or
        $Field -in @('weaponDamagePct', 'offensiveProjectileFumbleMin', 'skillCooldownReduction', 'skillLifePercent', 'skillLifePercentBuffDuration')) {
        return '%'
    }
    return ''
}

function Format-Value {
    param([double]$Number, [string]$Field)
    return "$(Format-Number $Number)$(Get-Unit $Field)"
}

function Format-Delta {
    param([double]$Number, [string]$Field)
    $sign = if ($Number -gt 0) { '+' } else { '' }
    return "$sign$(Format-Number $Number)$(Get-Unit $Field)"
}

function Get-StatName {
    param([string]$Field)

    $exact = @{
        weaponDamagePct = 'Weapon Damage'
        skillManaCost = 'Energy Cost'
        skillChanceWeight = 'Activation Weight'
        onHitActivationChance = 'Chance to Activate when Hit'
        skillTargetRadius = 'Target Radius'
        projectileExplosionRadius = 'Explosion Radius'
        skillTargetNumber = 'Number of Targets'
        projectileFragmentsLaunchNumberMin = 'Fragment Count (minimum)'
        projectileFragmentsLaunchNumberMax = 'Fragment Count (maximum)'
        projectileLaunchNumber = 'Number of Projectiles'
        projectileLaunchRotation = 'Projectile Spread Rotation'
        projectilePiercingChance = 'Chance to Pass Through Enemies'
        damageAbsorptionPercent = 'Damage Absorption'
        damageAbsorption = 'Damage Absorption (flat)'
        skillActiveDuration = 'Duration'
        skillCooldownTime = 'Skill Recharge'
        skillCooldownReduction = 'Skill Recharge Reduction'
        skillLifePercent = 'Health Restored'
        skillLifePercentBuffDuration = 'Health Restoration Duration'
        offensiveProjectileFumbleMin = 'Impaired Aim'
        offensivePercentCurrentLifeMin = 'Reduction to Enemy Health (minimum)'
        offensivePercentCurrentLifeMax = 'Reduction to Enemy Health (maximum)'
        offensiveTotalDamageReductionPercentMin = 'Reduced Target Damage'
        offensiveTotalResistanceReductionAbsoluteMin = 'Reduced Target Resistances'
        offensivePhysicalResistanceReductionAbsoluteMin = 'Reduced Target Physical Resistance'
        offensiveElementalReductionPercentMin = 'Reduced Target Elemental Resistance'
        offensiveSlowDefensiveAbilityMin = 'Reduced Target Defensive Ability'
        offensiveSlowOffensiveAbilityMin = 'Reduced Target Offensive Ability'
        skillChargeLevel = 'Charge Level'
        skillComboChargeLevel = 'Combo Charge Level'
        skillComboChargeSpendReduction = 'Charge Cost Reduction'
        petBurstSpawn = 'Summons per Cast'
        petLimit = 'Summon Limit'
        contagionMaxSpread = 'Maximum Spreads'
        contagionLimit = 'Contagion Limit'
        sparkMaxNumber = 'Maximum Sparks'
        characterArmorStrengthReqReduction = 'Reduced Physique Requirement for Armor'
        characterDeflectProjectile = 'Chance to Deflect Projectiles'
        defensiveBlockAmountModifier = 'Shield Block Amount'
        defensiveTotalSpeedResistance = 'Slow Resistance'
        retaliationDamagePct = 'Retaliation Damage Added to Attack'
        offensiveLifeLeechMin = 'Attack Damage Converted to Health'
        characterOffensiveAbility = 'Offensive Ability'
        characterOffensiveAbilityModifier = 'Offensive Ability'
        characterDefensiveAbility = 'Defensive Ability'
        characterDefensiveAbilityModifier = 'Defensive Ability'
        characterLife = 'Health'
        characterLifeModifier = 'Health'
        characterLifeRegen = 'Health Regeneration'
        characterLifeRegenModifier = 'Health Regeneration'
        characterMana = 'Energy'
        characterManaModifier = 'Energy'
        characterManaRegen = 'Energy Regeneration'
        characterManaRegenModifier = 'Energy Regeneration'
        characterStrengthModifier = 'Physique'
        characterDexterityModifier = 'Cunning'
        characterIntelligenceModifier = 'Spirit'
        characterConstitutionModifier = 'Constitution'
        characterAttackSpeedModifier = 'Attack Speed'
        characterSpellCastSpeedModifier = 'Casting Speed'
        characterRunSpeedModifier = 'Movement Speed'
        characterRunSpeedMaxModifier = 'Maximum Movement Speed'
        characterTotalSpeedModifier = 'Total Speed'
        offensiveTauntMin = 'Taunt'
        offensiveStunMin = 'Stun Duration (minimum)'
        offensiveStunMax = 'Stun Duration (maximum)'
        offensiveStunModifier = 'Stun Duration'
        offensiveKnockdownMin = 'Knockdown Duration (minimum)'
        offensiveKnockdownMax = 'Knockdown Duration (maximum)'
        offensiveKnockdownChance = 'Knockdown Chance'
        offensiveFreezeChance = 'Freeze Chance'
        offensiveSleepChance = 'Sleep Chance'
        offensiveConfusionChance = 'Confusion Chance'
        offensiveDisruptionChance = 'Skill Disruption Chance'
    }
    if ($exact.ContainsKey($Field)) { return $exact[$Field] }

    $damageNames = [ordered]@{
        'Physical' = 'Physical'
        'Pierce' = 'Pierce'
        'Fire' = 'Fire'
        'Cold' = 'Cold'
        'Lightning' = 'Lightning'
        'Poison' = 'Acid'
        'Life' = 'Vitality'
        'Aether' = 'Aether'
        'Chaos' = 'Chaos'
        'Elemental' = 'Elemental'
        'Bleeding' = 'Bleeding'
    }
    $dotNames = @{
        Physical = 'Internal Trauma'
        Fire = 'Burn'
        Cold = 'Frostburn'
        Lightning = 'Electrocute'
        Poison = 'Poison'
        Life = 'Vitality Decay'
        Bleeding = 'Bleeding'
    }

    if ($Field -match '^offensiveSlow([A-Za-z]+?)(DurationModifier|Modifier|Min|Max)$') {
        $type = $matches[1]
        $suffix = $matches[2]
        $name = if ($dotNames.ContainsKey($type)) { $dotNames[$type] } else { $type }
        switch ($suffix) {
            'DurationModifier' { return "$name Duration" }
            'Modifier' { return "$name Damage" }
            'Min' { return "$name Damage (minimum)" }
            'Max' { return "$name Damage (maximum)" }
        }
    }
    if ($Field -match '^offensive([A-Za-z]+?)(Modifier|Min|Max)$') {
        $type = $matches[1]
        $suffix = $matches[2]
        $name = if ($damageNames.Contains($type)) { $damageNames[$type] } else { $type }
        switch ($suffix) {
            'Modifier' { return "$name Damage" }
            'Min' { return "$name Damage (minimum)" }
            'Max' { return "$name Damage (maximum)" }
        }
    }
    if ($Field -match '^defensive(.+)$') {
        $type = $matches[1]
        if ($type -eq 'Life') { $type = 'Vitality' }
        return "$type Resistance"
    }
    if ($Field -match '^racialBonusPercent(Damage|Defense)$') {
        return "Racial Bonus $($matches[1])"
    }

    $words = $Field -creplace '([a-z0-9])([A-Z])', '$1 $2'
    return (Get-Culture).TextInfo.ToTitleCase($words)
}

function Get-ReviewDecision {
    param([string]$Field)

    # Approve only narrowly defined continuous stats before evaluating broad
    # exception tokens such as "Duration" in damage-over-time duration modifiers.
    if ($Field -eq 'weaponDamagePct') { return [pscustomobject]@{ Category = 'Safe'; Reason = 'Continuous damage scaling; the proposal only restores the natural-cap marginal gain.' } }
    elseif ($Field -match '^retaliation' -and $Field -notmatch 'Chance') { return [pscustomobject]@{ Category = 'Safe'; Reason = 'Continuous retaliation scaling; no count, chance, or control behavior changes.' } }
    elseif ($Field -match '^character(OffensiveAbility|DefensiveAbility|Life|LifeRegen|Mana|ManaRegen|Strength|Dexterity|Intelligence|Constitution)') {
        return [pscustomobject]@{ Category = 'Safe'; Reason = 'Continuous player attribute scaling with no timing, targeting, or probability change.' }
    }
    elseif ($Field -match '^offensive(Slow)?(Physical|Pierce|Fire|Cold|Lightning|Poison|Life|Aether|Chaos|Elemental|Bleeding)(Min|Max|Modifier|DurationModifier)$') {
        return [pscustomobject]@{ Category = 'Safe'; Reason = 'Continuous direct or damage-over-time scaling; no behavior or target-count change.' }
    }
    elseif ($Field -eq 'offensiveTotalDamageModifier' -or $Field -eq 'offensiveCritDamageModifier') {
        return [pscustomobject]@{ Category = 'Safe'; Reason = 'Continuous damage scaling; the proposal only restores the natural-cap marginal gain.' }
    }

    $exceptionReason = ''
    if ($Field -eq 'skillManaCost') { $exceptionReason = 'Energy cost is a cost curve, not a player benefit; lowering its overcap penalty would be a separate balance change.' }
    elseif ($Field -eq 'skillLifePercent') { $exceptionReason = 'Percent health restoration can cross recovery breakpoints and needs skill-specific sustain testing.' }
    elseif ($Field -match 'offensiveSlow(Offensive|Defensive)Ability') { $exceptionReason = 'Reduced Offensive or Defensive Ability compounds hit and critical-hit thresholds and needs encounter testing.' }
    elseif ($Field -match '(Chance|Weight|onHit)') { $exceptionReason = 'Chance and weighting fields are discrete probability mechanics and may have engine or balance caps.' }
    elseif ($Field -match '(Cooldown|Recharge)') { $exceptionReason = 'Recharge changes alter uptime and rotation breakpoints rather than only restoring a stat growth rate.' }
    elseif ($Field -match '(Duration|Radius|Range)') { $exceptionReason = 'Duration and area values create gameplay breakpoints and need visual and encounter testing.' }
    elseif ($Field -match '(Target|Projectile|Fragment|Launch|Piercing|spark|contagion)') { $exceptionReason = 'Target and projectile counts or behavior are discrete mechanics that may change hit density and performance.' }
    elseif ($Field -match '(petBurstSpawn|petLimit|spawnObject)') { $exceptionReason = 'Summon counts and spawn distributions are discrete mechanics with pathing, performance, and encounter implications.' }
    elseif ($Field -match '(Absorption|MaxResist)') { $exceptionReason = 'Absorption and maximum resistance can cross strong defensive breakpoints and require separate balance approval.' }
    elseif ($Field -match '(ResistanceReduction|ReductionAbsolute|ReductionPercent)') { $exceptionReason = 'Resistance reduction compounds party and damage scaling and must be reviewed against stacking rules.' }
    elseif ($Field -match '^defensive') { $exceptionReason = 'Resistance and crowd-control protection can approach caps and should be reviewed by damage type.' }
    elseif ($Field -match '(Speed|Leech|PercentCurrentLife|Fumble|Taunt|Stun|Knockdown|Freeze|Sleep|Confusion|Disruption)') { $exceptionReason = 'This stat affects control, recovery, speed, or boss mechanics and may have caps or immunity interactions.' }
    elseif ($Field -match '(skillCharge|skillCombo)') { $exceptionReason = 'Charge mechanics use discrete thresholds and need skill-specific behavior testing.' }
    elseif ($Field -match '(racialBonus|ReqReduction|Deflect)') { $exceptionReason = 'This is a specialized modifier with cap or encounter-specific consequences.' }
    else { $exceptionReason = 'The field is not in the conservative automatic whitelist and needs a tooltip and engine-behavior review.' }

    return [pscustomobject]@{ Category = 'Exception'; Reason = $exceptionReason }
}

function Get-FallbackSkillName {
    param([string]$RelativePath)

    $lower = $RelativePath.ToLowerInvariant()
    if ($lower -match 'skeleton_basescaling|skeleton_charge') { return 'Raise Skeletons — internal pet scaling' }
    if ($lower -match 'wraith.*shadowstrike') { return 'Reap Spirit — internal pet Shadow Strike' }
    if ($lower -match 'wraithplayer_basicattack') { return 'Reap Spirit — internal pet basic attack' }
    if ($lower -match 'manticore') { return 'Summon Primal Spirit — internal pet ability' }
    if ($lower -match 'raven_innate') { return 'Summon Familiar — internal pet scaling' }
    if ($lower -match 'blightbeast') { return 'Summon Blight Fiend — internal pet ability' }
    $leaf = [System.IO.Path]::GetFileNameWithoutExtension($RelativePath) -replace '[_-]+', ' '
    return "Internal skill: $((Get-Culture).TextInfo.ToTitleCase($leaf))"
}

if (-not (Test-Path -LiteralPath $TagRoot)) {
    throw "English tooltip cache not found at '$TagRoot'. Extract Text_EN.arc for the base game and expansions first."
}

$script:tags = @{}
foreach ($file in Get-ChildItem -LiteralPath $TagRoot -Recurse -File -Filter '*skills*.txt' | Sort-Object FullName) {
    foreach ($line in [System.IO.File]::ReadLines($file.FullName)) {
        if ($line.StartsWith('#') -or $line.StartsWith('//')) { continue }
        $equals = $line.IndexOf('=')
        if ($equals -lt 1) { continue }
        $script:tags[$line.Substring(0, $equals).Trim()] = $line.Substring($equals + 1).Trim()
    }
}

$effective = @{}
foreach ($layer in $layers) {
    $skillRoot = Join-Path $layer.Root 'records\skills'
    if (-not (Test-Path -LiteralPath $skillRoot)) { continue }
    foreach ($classDir in Get-ChildItem -LiteralPath $skillRoot -Directory -Filter 'playerclass*') {
        foreach ($file in Get-ChildItem -LiteralPath $classDir.FullName -Recurse -File -Filter '*.dbr') {
            $relative = $file.FullName.Substring($layer.Root.Length).TrimStart('\', '/') -replace '\\', '/'
            $effective[$relative.ToLowerInvariant()] = [pscustomobject]@{
                RelativePath = $relative
                FullPath = $file.FullName
                Layer = $layer.Name
            }
        }
    }
}

$groups = @{}
$recordCount = 0
foreach ($entry in $effective.Values | Sort-Object RelativePath) {
    $fields = Read-Dbr $entry.FullPath
    if ($fields['templateName'] -eq 'database/templates/skill_modifier.tpl') { continue }
    $soft = 0
    $hard = 0
    if (-not [int]::TryParse($fields['skillMaxLevel'], [ref]$soft)) { continue }
    if (-not [int]::TryParse($fields['skillUltimateLevel'], [ref]$hard)) { continue }
    if ($soft -lt 2 -or $hard -le $soft) { continue }
    if ($entry.RelativePath -notmatch 'playerclass(?<class>\d{2})') { continue }
    $classId = $matches['class']
    if (-not $classNames.ContainsKey($classId)) { continue }

    $displayTag = $fields['skillDisplayName']
    $displayName = Resolve-Tag $displayTag
    if ([string]::IsNullOrWhiteSpace($displayName) -or $displayName -eq $displayTag) {
        $displayName = Get-FallbackSkillName $entry.RelativePath
    }
    $description = Resolve-Tag $fields['skillBaseDescription']
    if ($description -eq $fields['skillBaseDescription']) { $description = '' }
    $groupKey = "$classId|$displayName"
    if (-not $groups.ContainsKey($groupKey)) {
        $groups[$groupKey] = [pscustomobject]@{
            ClassId = $classId
            Name = $displayName
            Descriptions = [System.Collections.Generic.HashSet[string]]::new()
            Records = [System.Collections.Generic.List[object]]::new()
            Items = [System.Collections.Generic.List[object]]::new()
        }
    }
    $group = $groups[$groupKey]
    if (-not [string]::IsNullOrWhiteSpace($description)) { [void]$group.Descriptions.Add($description) }
    $group.Records.Add([pscustomobject]@{ Path = $entry.RelativePath; Soft = $soft; Hard = $hard; Layer = $entry.Layer })
    $recordCount++

    foreach ($field in $fields.Keys) {
        if ($field -in @('skillMaxLevel', 'skillUltimateLevel')) { continue }
        $values = Convert-ToNumberArray $fields[$field]
        if ($null -eq $values -or $values.Count -ne $hard) { continue }
        $span = [math]::Min(3, $soft - 1)
        $baseline = ($values[$soft - 1] - $values[$soft - 1 - $span]) / $span
        if ([math]::Abs($baseline) -lt 0.000001) { continue }

        $tailDeltas = [System.Collections.Generic.List[double]]::new()
        $diminished = $false
        $directionAnomaly = $false
        for ($index = $soft; $index -lt $hard; $index++) {
            $delta = $values[$index] - $values[$index - 1]
            $tailDeltas.Add($delta)
            if (($baseline -gt 0 -and $delta -lt -0.000001) -or ($baseline -lt 0 -and $delta -gt 0.000001)) {
                $directionAnomaly = $true
            }
            elseif ([math]::Abs($delta) + 0.000001 -lt [math]::Abs($baseline)) {
                $diminished = $true
            }
        }
        if (-not $diminished) { continue }

        $proposedTail = [System.Collections.Generic.List[double]]::new()
        $running = $values[$soft - 1]
        foreach ($delta in $tailDeltas) {
            $useDelta = $delta
            $sameDirectionOrFlat = ($baseline -gt 0 -and $delta -ge 0) -or ($baseline -lt 0 -and $delta -le 0)
            if (-not $directionAnomaly -and $sameDirectionOrFlat -and [math]::Abs($delta) -lt [math]::Abs($baseline)) {
                $useDelta = $baseline
            }
            $running += $useDelta
            $proposedTail.Add($running)
        }
        $weakest = if ($baseline -gt 0) { ($tailDeltas | Measure-Object -Minimum).Minimum } else { ($tailDeltas | Measure-Object -Maximum).Maximum }
        $decision = Get-ReviewDecision $field
        if ($directionAnomaly) {
            $decision = [pscustomobject]@{
                Category = 'Exception'
                Reason = 'The overcap sequence reverses direction, so a generic marginal-gain rule is unsafe.'
            }
        }
        $group.Items.Add([pscustomobject]@{
            Field = $field
            StatName = Get-StatName $field
            Category = $decision.Category
            Reason = $decision.Reason
            Soft = $soft
            Hard = $hard
            SoftValue = $values[$soft - 1]
            HardValue = $values[$hard - 1]
            Baseline = $baseline
            Weakest = $weakest
            CurrentTail = $values[$soft..($hard - 1)]
            ProposedTail = $proposedTail.ToArray()
            ProposedHard = $proposedTail[$proposedTail.Count - 1]
            DirectionAnomaly = $directionAnomaly
            Path = $entry.RelativePath
            Layer = $entry.Layer
        })
    }
}

$orderedGroups = $groups.Values | Sort-Object @{ Expression = { [int]$_.ClassId } }, Name
$safeCount = ($orderedGroups.Items | Where-Object Category -eq 'Safe').Count
$exceptionCount = ($orderedGroups.Items | Where-Object Category -eq 'Exception').Count

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add('# No-Diminishing-Returns Player Skill Review Plan')
$lines.Add('')
$lines.Add('This is a review plan only. It does not edit any DBR record. It inventories effective base-game, expansion, and current-mod player-skill records whose hard cap exceeds their natural cap, using normal load precedence, then flags numeric fields whose marginal gain becomes smaller after the natural cap.')
$lines.Add('')
$lines.Add('## Review rule')
$lines.Add('')
$lines.Add('- Preserve every value from rank 1 through the natural cap.')
$lines.Add('- Estimate the natural-cap pace from the average change across the last three natural ranks. This smooths integer rounding and alternating step patterns.')
$lines.Add('- Above the natural cap, replace only weaker marginal gains with that natural-cap pace. Preserve any vanilla overcap gain that is already equal or stronger.')
$lines.Add('- **Safe changes** contains continuous damage and core-attribute scaling that can be changed mechanically after review.')
$lines.Add('- **To-be-exception** contains costs, chances, timing, area, targeting, projectile behavior, summon counts, absorption, resistance effects, speed, control, and any unfamiliar field. The calculated sequence is shown for comparison but is not approved for implementation.')
$lines.Add('- `Current overcap` and `Candidate overcap` list the values at natural-cap +1 through hard cap. Percent, seconds, metres, and Energy units follow the tooltip-style stat label.')
$lines.Add('- Each candidate is a review checkbox. Mark it only after deciding whether to approve, reject, or revise the displayed sequence; checking an item does not modify a DBR.')
$lines.Add('')
$lines.Add('## Inventory summary')
$lines.Add('')
$lines.Add("- Effective overcap records reviewed: **$recordCount**")
$lines.Add("- Human-readable skill sections: **$($orderedGroups.Count)**")
$lines.Add("- Safe stat candidates: **$safeCount**")
$lines.Add("- To-be-exception stat candidates: **$exceptionCount**")
$lines.Add('')
$lines.Add('| Mastery | Skill sections | Safe candidates | To-be-exception candidates |')
$lines.Add('|---|---:|---:|---:|')
foreach ($classId in $classNames.Keys | Sort-Object) {
    $classGroups = @($orderedGroups | Where-Object ClassId -eq $classId)
    $classSafe = @($classGroups.Items | Where-Object Category -eq 'Safe').Count
    $classException = @($classGroups.Items | Where-Object Category -eq 'Exception').Count
    $lines.Add("| $($classNames[$classId]) | $($classGroups.Count) | $classSafe | $classException |")
}
$lines.Add('')

foreach ($classId in $classNames.Keys | Sort-Object) {
    $classGroups = @($orderedGroups | Where-Object ClassId -eq $classId)
    if ($classGroups.Count -eq 0) { continue }
    $lines.Add("## $($classNames[$classId])")
    $lines.Add('')
    foreach ($group in $classGroups) {
        $caps = $group.Records | ForEach-Object { "$($_.Soft)/$($_.Soft) → $($_.Hard)/$($_.Hard)" } | Sort-Object -Unique
        $lines.Add("### $($group.Name) — $($caps -join '; ')")
        $lines.Add('')
        if ($group.Descriptions.Count -gt 0) {
            $description = ($group.Descriptions | Sort-Object | Select-Object -First 1)
            $lines.Add("*Tooltip:* $description")
            $lines.Add('')
        }
        $recordList = $group.Records | Sort-Object Path | ForEach-Object { "``$($_.Path)`` [$($_.Layer)]" }
        $lines.Add("*Records:* $($recordList -join '; ')")
        $lines.Add('')
        foreach ($category in @('Safe', 'Exception')) {
            $heading = if ($category -eq 'Safe') { 'Safe changes' } else { 'To-be-exception' }
            $lines.Add("#### $heading")
            $lines.Add('')
            $items = @($group.Items | Where-Object Category -eq $category | Sort-Object StatName, Path, Field)
            if ($items.Count -eq 0) {
                $lines.Add('- None identified by the conservative numeric scan.')
                $lines.Add('')
                continue
            }
            foreach ($item in $items) {
                $currentTail = $item.CurrentTail | ForEach-Object { Format-Value $_ $item.Field }
                $proposedTail = $item.ProposedTail | ForEach-Object { Format-Value $_ $item.Field }
                $lead = "- [ ] **$($item.StatName)** — natural cap **$(Format-Value $item.SoftValue $item.Field) at $($item.Soft)/$($item.Soft)**; current hard cap **$(Format-Value $item.HardValue $item.Field) at $($item.Hard)/$($item.Hard)**. Natural-cap pace: **$(Format-Delta $item.Baseline $item.Field) per rank**; weakest overcap pace: **$(Format-Delta $item.Weakest $item.Field) per rank**."
                if ($category -eq 'Safe') {
                    $lead += " Proposed safe hard cap: **$(Format-Value $item.ProposedHard $item.Field)**."
                }
                else {
                    $lead += " Unapproved linear-floor candidate: **$(Format-Value $item.ProposedHard $item.Field)**. **Review reason:** $($item.Reason) Recommended default: preserve vanilla until explicitly approved."
                }
                $lead += " Current overcap: $($currentTail -join ' / '). Candidate overcap: $($proposedTail -join ' / '). Source: ``$($item.Path)`` → ``$($item.Field)``."
                $lines.Add($lead)
                $lines.Add('')
            }
        }
    }
}

$lines.Add('## Implementation gates')
$lines.Add('')
$lines.Add('1. Approve or reject every item in **To-be-exception**. Unreviewed exception fields remain vanilla.')
$lines.Add('2. Apply approved safe arrays to the mod by copying from the effective source layer first, so existing mod overrides are preserved and patched rather than overwritten.')
$lines.Add('3. Validate every edited array length against `skillUltimateLevel`; compare ranks 1 through the natural cap byte-for-byte with the source.')
$lines.Add('4. Test representative direct-damage, damage-over-time, buff, channeled, weapon-pool, pet, and transmuter skills in game. Confirm tooltip values at the natural cap, natural cap +1, and hard cap.')
$lines.Add('5. Rebuild the mod database in Asset Manager only after the approved DBR edits are complete. This plan file itself requires no compilation.')
$lines.Add('')
$lines.Add('## Explicit exclusions')
$lines.Add('')
$lines.Add('- Item-granted `skill_modifier.tpl` records are excluded because they modify skills through gear rather than define mastery rank progression.')
$lines.Add('- Fields with no detected reduction in marginal gain are not proposed for change.')
$lines.Add('- Hidden pet records are retained under a human-readable owning-skill label when no display tag exists.')
$lines.Add('- This plan does not alter devotion points, player level limits, enemy skills, item skills, or existing Ascended-affix overrides.')
$lines.Add('')

$outputDirectory = Split-Path $OutputPath -Parent
if (-not (Test-Path -LiteralPath $outputDirectory)) {
    [void](New-Item -ItemType Directory -Path $outputDirectory -Force)
}
[System.IO.File]::WriteAllLines($OutputPath, $lines, [System.Text.UTF8Encoding]::new($false))

[pscustomobject]@{
    OutputPath = $OutputPath
    SkillSections = $orderedGroups.Count
    EffectiveRecords = $recordCount
    SafeCandidates = $safeCount
    ExceptionCandidates = $exceptionCount
}
