# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 

## object - clear SPNs
```powershell
Set-DomainObject -Identity '<computer_name>$' -Clear 'serviceprincipalname' -Domain inlanefreight.local -DomainController <dc_ip> -Verbose
```

## object - scriptPath
```
Get-DomainObject <SamAccountName> -Properties scriptPath
```