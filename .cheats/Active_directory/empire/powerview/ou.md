# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 


## OU - get OU ACLS to link GPO 
```powershell
Get-DomainOU | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "GP-Link" -and $_.ActiveDirectoryRights -match "WriteProperty" } | select objectDN,securityIdentifier | fl
```

## OU - get OU ACLS of a group 
```powershell
Get-DomainOU | Get-DomainObjectAcl -ResolveGUIDs | ? {$_.SecurityIdentifier -eq ((Get-DomainGroup "<group_name>" | select objectSid).objectSid) -And ($_.ActiveDirectoryRights -match 'WriteProperty|GenericAll|GenericWrite|WriteDacl|WriteOwner')}
```

## OU - get OU ACLS of a user 
```powershell
Get-DomainOU | Get-DomainObjectAcl -ResolveGUIDs | ? {$_.SecurityIdentifier -eq ((Get-DomainUser "<domain_netbios>\<user>" | select objectSid).objectSid) -And ($_.ActiveDirectoryRights -match 'WriteProperty|GenericAll|GenericWrite|WriteDacl|WriteOwner')}
```