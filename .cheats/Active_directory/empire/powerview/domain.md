# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 

## Get info about the current domain (1)
```powershell
Get-Domain
```

## Get info about the current domain (2)
```powershell
Get-NetDomain
```

## Get domain info
```powershell
Get-NetDomain -Domain <domain>
```

## Get domain SID
```powershell
Get-DomainSID
```

## Get Forest info
```powershell
Get-ForestDomain
```

## Get info about the domain policy
```powershell
Get-DomainPolicy
```

## Get Kerberos tickets info(MaxServiceAge)
```powershell
(Get-DomainPolicy)."KerberosPolicy
```

## Get Password policy
```powershell
(Get-DomainPolicy)."SystemAccess"
```

## Get current user privileges
```powershell
(Get-DomainPolicy).PrivilegeRights
```

## Get specific info of current domain controller
```powershell
Get-DomainController | select Forest, Domain, IPAddress, Name, OSVersion | fl
```

## Get all ifo of specific domain Domain Controller
```powershell
Get-NetDomainController -Domain <domain>
```

## Get all domain trust 
```powershell
Get-DomainTrustMapping
```

