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

## Computer - Change samaccountname
```
Set-MachineAccountAttribute -MachineAccount "<computer_name|jubeaz>" -Value "<new_computer_name>" -Attribute samaccountname -Domain <domain_fqdn> -DomainController <dc_ip> -Verbose
```


## Computer - get SPNs
```powershell
Get-DomainComputer "<computer_name>" -Properties 'serviceprincipalname' | Select-Object -ExcludeProperty serviceprincipalname
```

## Computer - clear SPN
```
Set-DomainObject -Identity "<computer_name>" -Clear 'serviceprincipalname' -Verbose
```

## Computer - Set SPN
```powershell
Set-DomainObject -Identity "<computer_name>" -Set @{serviceprincipalname='<SPN>'} -Verbose
```