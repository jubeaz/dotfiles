
# pwsh
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY/FIREWALL #tag/powershell 

## firewall - list commands
```powershell
Get-Command -Module NetSecurity
```

## firewall - get status
```powershell
Get-NetFirewallProfile | ft Name,Enabled
```

## firewall - get active profile
```powershell
 Get-NetFirewallSetting -PolicyStore ActiveStore | Select-Object -ExpandProperty ActiveProfile
```

##  firewall -  get active profile active rules (summary)
```powershell
Get-NetFirewallRule -Enabled true -Direction '<direction|Inbound>' -PolicyStore ActiveStore |  Format-Table -Property Profile, Name,DisplayName, Action
```

##  firewall -  get active profile active rules (detailed)
```powershell
Get-NetFirewallRule -Enabled true -Direction '<direction|Inbound>' -PolicyStore ActiveStore | Format-Table -Property Name,DisplayName, @{Name='Protocol';Expression={($PSItem | Get-NetFirewallPortFilter).Protocol}}, @{Name='LocalPort';Expression={($PSItem | Get-NetFirewallPortFilter).LocalPort}},@{Name='RemotePort';Expression={($PSItem | Get-NetFirewallPortFilter).RemotePort}}, @{Name='RemoteAddress';Expression={($PSItem | Get-NetFirewallAddressFilter).RemoteAddress}},
Action
```

## firewall - disable (profile)
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```powershell
Set-NetFirewallProfile -Profile <profile|*> -Enabled False
```

## Firewall - add allow inbound rule
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```powershell
New-NetFirewallRule -DisplayName "<name|jubeaz>" -Profile Any -Enabled True -Direction Inbound -Action Allow -RemoteAddress <r_ip|Any> -Protocol <proto|TCP>  -LocalAddress <l_ip|Any> -LocalPort <port>  
```

## Firewall - add allow outbound rule
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```powershell
New-NetFirewallRule -DisplayName "<name|jubeaz>" -Profile Any -Enabled True -Direction Outbound -Action Allow -RemoteAddress <r_ip|Any> -LocalPort <port|Any> -Protocol <proto|TCP>  -LocalAddress <l_ip|Any>  
```

## Firewall - disable 
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```powershell
Set-NetFirewallRule -DisplayName <name> -Enabled false
```

## Firewall - remove rule
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```powershell
Remove-NetFirewallRule -DisplayName <name>
```

