# Invoke-RunAs

% empire, windows, Invoke-RunAs

#plateform/windows #target/remote  #cat/RECON

## import module
empire/management/Invoke-RunAs.ps1
```powershell
. .\Invoke-RunAs.ps1
```


## Invoke-RunAs 
```powershell
PS > Invoke-RunAs -UserName <user> -Password '<password>' -Domain <domain_fqdn> -Cmd cmd.exe -Arguments "/c <cmd>"
```
