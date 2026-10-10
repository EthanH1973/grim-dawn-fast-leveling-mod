param([Parameter(Mandatory=$true)][string]$SourceRoot,[Parameter(Mandatory=$true)][string]$ArchivePath)
$ErrorActionPreference='Stop'
$names=@('game/utility.lua','game/modscript.lua','game/loot.lua','main.lua','game/beutekugel_blueprints.lua')
$encoding=[Text.UTF8Encoding]::new($false)
$records=[Collections.Generic.List[object]]::new()
$data=[IO.MemoryStream]::new();$w=[IO.BinaryWriter]::new($data)
$w.Write((New-Object byte[] 2048))
$stringData=[IO.MemoryStream]::new();$strings=[IO.BinaryWriter]::new($stringData)
foreach($name in $names){
 $file=Join-Path $SourceRoot $name
 if(!(Test-Path -LiteralPath $file)){throw "Missing source: $file"}
 $payload=[IO.File]::ReadAllBytes($file)
 $nameBytes=$encoding.GetBytes($name)
 $offset=[uint32]$data.Position
 $w.Write($payload)
 $a=1L;$b=0L
 foreach($octet in $payload){$a=($a+$octet)%65521;$b=($b+$a)%65521}
 $records.Add([pscustomobject]@{Name=$name;Offset=$offset;Length=[uint32]$payload.Length;Checksum=[uint32]($b*65536+$a);NameOffset=[uint32]$stringData.Position;NameLength=[uint32]$nameBytes.Length;FileTime=[DateTime]::UtcNow.ToFileTimeUtc()})
 $strings.Write($nameBytes);$strings.Write([byte]0)
}
$stringOffset=[uint32]$data.Position
$stringBytes=$stringData.ToArray();$w.Write($stringBytes)
foreach($r in $records){
 $w.Write([uint32]1)
 $w.Write([uint32]$r.Offset)
 $w.Write([uint32]$r.Length)
 $w.Write([uint32]$r.Length)
 $w.Write([uint32]$r.Checksum)
 $w.Write([int64]$r.FileTime)
 $w.Write([uint32]0)
 $w.Write([uint32]0)
 $w.Write([uint32]$r.NameLength)
 $w.Write([uint32]$r.NameOffset)
}
$w.Seek(0,[IO.SeekOrigin]::Begin)|Out-Null
$w.Write([uint32]0x435241)
$w.Write([uint32]3)
$w.Write([uint32]$records.Count)
$w.Write([uint32]0)
$w.Write([uint32]0)
$w.Write([uint32]$stringBytes.Length)
$w.Write([uint32]$stringOffset)
$target=Join-Path (Split-Path -Parent $PSScriptRoot) 'resources/Scripts.arc'
if([IO.Path]::GetFullPath($ArchivePath) -eq [IO.Path]::GetFullPath($target)){throw 'Write a staging archive first'}
[IO.File]::WriteAllBytes($ArchivePath,$data.ToArray())
$result=[IO.File]::ReadAllBytes($ArchivePath)
function Get-U32([int]$at){[BitConverter]::ToUInt32($result,$at)}
if((Get-U32 0) -ne 0x435241 -or (Get-U32 4) -ne 3 -or (Get-U32 8) -ne 5){throw 'ARC header mismatch'}
$s=Get-U32 24;$t=$s+(Get-U32 20)
for($i=0;$i -lt $records.Count;$i++){
 $p=$t+44*$i
 if((Get-U32 $p) -ne 1){throw 'ARC entry type mismatch'}
 $offset=Get-U32 ($p+4);$length=Get-U32 ($p+8)
 $name=$encoding.GetString($result,$s+(Get-U32 ($p+40)),(Get-U32 ($p+36)))
 if($name -cne $records[$i].Name){throw "ARC name mismatch: $name"}
 $sourceBytes=[IO.File]::ReadAllBytes((Join-Path $SourceRoot $name))
 if($length -ne $sourceBytes.Length){throw "ARC length mismatch: $name"}
 for($j=0;$j -lt $length;$j++){if($result[$offset+$j] -ne $sourceBytes[$j]){throw "ARC payload mismatch: $name"}}
}
"Packed and verified $($records.Count) scripts: $ArchivePath"
