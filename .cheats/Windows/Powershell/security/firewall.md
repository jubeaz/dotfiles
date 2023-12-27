
# powershell
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY/FIREWALL #tag/powershell 

## firewall - get firewall commands
```powershell
Get-Command -Noun NetFirewall* -verb Get
```

## firewall - show firewall config
```powershell
Get-NetFirewallProfile
```

## firewall - show firewall settings
```powershell
Get-NetFirewallSetting
```

## firewall - show inbound firewall rules
```powershell
Get-NetFirewallRule | Where { $_.Enabled -eq 'True' -and $_.Direction -eq 'Inbound' }
```
 
## firewall - show  firewall rules
```powershell
Show-NetfirewallRule| sort direction | ? enabled -eq "true" | ft -property @{label="Name" ; expression={$_.displayname}}, @{label="Direction" ; expression={$_.direction}}
```

## firewall - show firewall rules in active store
```powershell
Get-NetFirewallRule -PolicyStore ActiveStore
```