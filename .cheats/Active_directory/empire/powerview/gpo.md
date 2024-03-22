# powerview

% ad, windows, powerview, GPO
#plateform/windows #target/remote  #cat/RECON 

## GPO - list all
```powershell
Get-DomainGPO -Domain <domain> -Properties displayName, cn, gpcfilesyspath
```

## GPO - list all applied to a user
```powershell
Get-DomainGPO -UserIdentity <user> -Properties DisplayName, cn, gpcfilesyspath
```

## GPO - list all applied to a computer
```powershell
Get-DomainGPO -ComputerIdentity <compuer_name> -Properties DisplayName, cn, gpcfilesyspath
```

## GPO - search writable GPO
Get-DomainGroup "Domain Users" | select objectSid
```powershell
Get-DomainGPO | Get-ObjectAcl | ? {$_.SecurityIdentifier -eq ((Get-DomainUser "<domain_netbios>\<user>" | select objectSid).objectSid)}
```

## GPO - get based on GUID
```powershell
Get-DomainGPO  -Guid '{<GUID>}'
```

## GPO - Get who can create new GPOs
```powershell
Get-DomainObjectAcl -SearchBase "CN=Policies,CN=System,DC=<>" -ResolveGUIDs | ? { $_.ObjectAceType -eq "Group-Policy-Container" } | select ObjectDN, ActiveDirectoryRights, SecurityIdentifier | fl
```

## GPO - Enumerate permissions for GPOs where non builtin usershave some kind of modification/control rights
```powershell
Get-DomainObjectAcl -LDAPFilter '(objectCategory=groupPolicyContainer)' | ? { ($_.SecurityIdentifier -match '^S-1-5-.*-[1-9]\d{3,}$') -and ($_.ActiveDirectoryRights -match 'WriteProperty|GenericAll|GenericWrite|WriteDacl|WriteOwner')} | select ObjectDN, ActiveDirectoryRights, SecurityIdentifier | fl
```

## GPO - get OU and applied GPO
```powershell
Get-DomainOU  | select distinguishedname, gplink | fl
```


## GPO - get OU where link it to a specific OU
```powershell
Get-DomainOU | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "GP-Link" -and $_.ActiveDirectoryRights -match "WriteProperty" } | select objectDN,securityIdentifier | fl
```