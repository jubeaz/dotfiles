# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 

## Domain - Get info about the current domain (1)
```powershell
Get-Domain
```

## Domain - Get info about the current domain (2)
```powershell
Get-NetDomain
```

## Domain - Get domain info
```powershell
Get-NetDomain -Domain <domain_fqdn>
```

## Domain - Get domain SID
```powershell
Get-DomainSID
```

## Domain - Get Forest info
```powershell
Get-ForestDomain
```

## Domain - Get info about the domain policy
```powershell
Get-DomainPolicy
```

## Domain - Get Kerberos tickets info(MaxServiceAge)
```powershell
(Get-DomainPolicy)."KerberosPolicy
```

## Domain - Get Password policy
```powershell
(Get-DomainPolicy)."SystemAccess"
```

## Domain - Get current user privileges
```powershell
(Get-DomainPolicy).PrivilegeRights
```

## Domain - Get specific info of current domain controller
```powershell
Get-DomainController | select Forest, Domain, IPAddress, Name, OSVersion | fl
```

## Domain - Get all ifo of specific domain Domain Controller
```powershell
Get-NetDomainController -Domain <domain_fqdn>
```

## Domain - Get all domain trust 
```powershell
Get-DomainTrustMapping
```

## Domain - Get machine account quota
```powershell
(Get-DomainObject -SearchScope Base)."ms-ds-machineaccountquota"
```

## Domain - Get machine account quota (SID)
```poweshell
(Get-DomainComputer -Filter '(ms-DS-CreatorSID=*)' -Properties name,ms-ds-creatorsid | Get-DomainComputer -Filter '(ms-DS-CreatorSID=*)' -Properties name,ms-ds-creatorsid).Count
```