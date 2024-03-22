# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 


## Computer - Find all with Unconstrained Delegation
```powershell
Get-DomainComputer -Unconstrained
```


## Computer - Find all with Constrined Delegation
```powershell
Get-DomainComputer -TrustedToAuth | select userprincipalname, name, msds-allowedtodelegateto
```