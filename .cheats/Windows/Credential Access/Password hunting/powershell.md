# pwsh

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 



## powershell - Search password in registry
```powershell
REG QUERY HKLM /F "password" /t REG_SZ /S /K
REG QUERY HKCU /F "password" /t REG_SZ /S /K
```

## powershell - credential manager
```powershell
cmdkey /list
```