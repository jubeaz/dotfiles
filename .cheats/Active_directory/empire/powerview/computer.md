# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 


## Find all Computer with Unconstrained Delegation
```powershell
Get-DomainComputer -Unconstrained
```


## Find all Computer with Constrined Delegation
```powershell
Get-DomainComputer -TrustedToAuth | select userprincipalname, name, msds-allowedtodelegateto
```