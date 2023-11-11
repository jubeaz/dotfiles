# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 

## Get ASREPRoastable users
```powershell
Get-NetUser -PreauthNotRequired
```


## Get Kerberoastable users
```powershell
Get-NetUser -SPN
```

## Find all groups our current user got access
```powershell
Get-DomainGroup | Get-ObjectAcl -ResolveGUIDs | Foreach-Object {$_ | Add-Member -NotePropertyName Identity -NotePropertyValue (ConvertFrom-SID $_.SecurityIdentifier.value) -Force; $_} | Foreach-Object {if ($_.Identity -eq $("$env:UserDomain\$env:Username")) {$_}}
```

## Find all users our current user got access
```powershell
Get-DomainUser | Get-ObjectAcl -ResolveGUIDs | Foreach-Object {$_ | Add-Member -NotePropertyName Identity -NotePropertyValue (ConvertFrom-SID $_.SecurityIdentifier.value) -Force; $_} | Foreach-Object {if ($_.Identity -eq $("$env:UserDomain\$env:Username")) {$_}}
```


## Find user accounts that have kerberos constrained delegation 
```powershell
Get-NetUser -TrustedToAuth | select userprincipalname, name, msds-allowedtodelegateto
```