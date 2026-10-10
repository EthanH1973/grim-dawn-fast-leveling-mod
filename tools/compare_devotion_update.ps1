param([string]$ExtractRoot = 'audit/devotion_update_2026-10-09/base_extracted', [string]$BaselineRoot = 'D:/GAMES/Steam/steamapps/common/Grim Dawn/database', [string]$Label = 'base')
$ErrorActionPreference = 'Stop'
$modRoot = Split-Path -Parent $PSScriptRoot
$oldRoot = Join-Path $BaselineRoot 'records/skills/devotion'
$newRoot = Join-Path $modRoot "$ExtractRoot/records/skills/devotion"
$targetRoot = Join-Path $modRoot 'database/records/skills/devotion'
function Read-Record($path) {
    $result = @{}
    if (Test-Path -LiteralPath $path) {
        foreach ($line in [IO.File]::ReadAllLines($path)) {
            $parts = $line.Split(',', 3)
            if ($parts.Length -ge 2) { $result[$parts[0]] = $parts[1] }
        }
    }
    return $result
}
$changes = @(
    foreach ($file in Get-ChildItem -LiteralPath $newRoot -Recurse -Filter '*.dbr') {
        $relative = [IO.Path]::GetRelativePath($newRoot, $file.FullName).Replace('\','/')
        $old = Read-Record (Join-Path $oldRoot $relative)
        $new = Read-Record $file.FullName
        $mod = Read-Record (Join-Path $targetRoot $relative)
        foreach ($field in @(@($old.Keys) + @($new.Keys) | Sort-Object -Unique)) {
            if ($old[$field] -cne $new[$field]) {
                [pscustomobject]@{Record=$relative; Description=$mod['FileDescription']; Field=$field; OldBase=$old[$field]; NewBase=$new[$field]; CurrentMod=$mod[$field]}
            }
        }
    }
)
$changes | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $modRoot "audit/devotion_update_2026-10-09/${Label}_changes.json") -Encoding utf8
$changes | Format-Table Record,Field,OldBase,NewBase,CurrentMod -AutoSize | Out-String -Width 250
"Changed fields: $($changes.Count); changed records: $(@($changes.Record | Sort-Object -Unique).Count)"
