$ErrorActionPreference = 'Stop'
$modRoot = Split-Path -Parent $PSScriptRoot
$auditRoot = Join-Path $modRoot 'audit/devotion_update_2026-10-09'
$targetRoot = Join-Path $modRoot 'database/records/skills/devotion'
$encoding = [Text.UTF8Encoding]::new($false)
$invariant = [Globalization.CultureInfo]::InvariantCulture
$changes = @(
    foreach ($label in @('base','gdx1','gdx2')) {
        foreach ($change in (Get-Content (Join-Path $auditRoot "${label}_changes.json") -Raw | ConvertFrom-Json)) {
            $change | Add-Member -NotePropertyName Source -NotePropertyValue $label
            $change
        }
    }
)
if ($changes.Count -ne 201) { throw 'Unexpected patch delta count; review comparison first.' }
if (@($changes | Group-Object Record,Field | Where-Object Count -gt 1).Count) { throw 'Overlapping patch changes require review.' }
$applied = [Collections.Generic.List[object]]::new()
foreach ($group in ($changes | Group-Object Record)) {
    $path = Join-Path $targetRoot $group.Name
    $backup = Join-Path $auditRoot ('before/' + $group.Name)
    if (Test-Path -LiteralPath $backup) { throw "Backup already exists: $backup" }
    $before = [IO.File]::ReadAllText($path)
    $after = $before
    foreach ($change in $group.Group) {
        $field = $change.Field
        $pattern = '(?m)^' + [regex]::Escape($field) + ',([^,\r\n]*),(?=\r?$)'
        $matchesFound = [regex]::Matches($after,$pattern)
        if ($matchesFound.Count -gt 1) { throw "Duplicate field: $path $field" }
        $current = if ($matchesFound.Count) { $matchesFound[0].Groups[1].Value } else { $null }
        if ($current -cne $change.CurrentMod) { throw "Mod changed since comparison: $path $field" }
        $new = $null
        $rule = 'Remove field retired by game update'
        if ($null -ne $change.NewBase) {
            if ($change.NewBase -notmatch '^\d+\.\d+$') { throw "Unreviewed non-numeric addition: $path $field" }
            if ($field -notmatch '^(character|offensive|defensive)') { throw "Unreviewed numeric field: $path $field" }
            if ($change.OldBase -and [decimal]::Parse($change.OldBase,$invariant) -ne 0) {
                $oldBase = [decimal]::Parse($change.OldBase,$invariant)
                $modValue = [decimal]::Parse($current,$invariant)
                if ($modValue -ne $oldBase * 4) { throw "Custom multiplier requires review: $path $field" }
            }
            $new = ([decimal]::Parse($change.NewBase,$invariant) * 4).ToString('F6',$invariant)
            $rule = 'Latest base value multiplied by established 4x combat-buff scale'
        } else {
            if ($field -eq 'petBonusName') {
                if ($current -cne $change.OldBase) { throw "Custom pet link requires review: $path" }
            } elseif ($field -match '^defensive') {
                if ([decimal]::Parse($current,$invariant) -ne [decimal]::Parse($change.OldBase,$invariant) * 4) { throw "Custom resistance requires review: $path $field" }
            } else { throw "Unreviewed removal: $path $field" }
        }
        if ($null -eq $new) {
            $after = [regex]::Replace($after, '(?m)^' + [regex]::Escape($field) + ',[^\r\n]*\r?\n', '')
        } elseif ($matchesFound.Count) {
            $after = [regex]::Replace($after,$pattern,($field + ',' + $new + ','))
        } else {
            $line = $field + ',' + $new + ','
            $lines = [Collections.Generic.List[string]]::new()
            $inserted = $false
            foreach ($existing in ($after -split '\r?\n')) {
                if (!$existing) { continue }
                $existingField = $existing.Split(',',2)[0]
                if (!$inserted -and $existingField -ne 'templateName' -and [string]::CompareOrdinal($existingField,$field) -gt 0) { $lines.Add($line); $inserted=$true }
                $lines.Add($existing)
            }
            if (!$inserted) { $lines.Add($line) }
            $after = ($lines -join "`r`n") + "`r`n"
        }
        $applied.Add([pscustomobject]@{Record=$change.Record; Source=$change.Source; Field=$field; OldBase=$change.OldBase; NewBase=$change.NewBase; OldMod=$current; NewMod=$new; Rule=$rule})
    }
    function Parse-Fields($text) {
        $fields=@{}
        foreach ($line in ($text -split '\r?\n')) { $p=$line.Split(',',3); if($p.Length -ge 2){if($fields.ContainsKey($p[0])){throw 'Duplicate field'};$fields[$p[0]]=$p[1]} }
        return $fields
    }
    $beforeFields=Parse-Fields $before
    $afterFields=Parse-Fields $after
    foreach ($field in @(@($beforeFields.Keys)+@($afterFields.Keys) | Sort-Object -Unique)) {
        if ($field -notin $group.Group.Field -and $beforeFields[$field] -cne $afterFields[$field]) { throw "Unrelated field changed: $path $field" }
    }
    New-Item -ItemType Directory -Path (Split-Path -Parent $backup) -Force | Out-Null
    Copy-Item -LiteralPath $path -Destination $backup
    [IO.File]::WriteAllText($path,$after,$encoding)
    if ([IO.File]::ReadAllText($path) -cne $after) { throw "Readback failed: $path" }
}
$applied | ConvertTo-Json -Depth 5 | Set-Content (Join-Path $auditRoot 'applied_changes.json') -Encoding utf8
"Applied and verified $($applied.Count) field changes in $(@($applied.Record | Sort-Object -Unique).Count) records."
