
# pwsh
% windows, security, firewall

#plateform/windows #target/local #cat/RECON/SECURITY/FIREWALL #tag/powershell 

## firewall - list commands
```powershell
Get-Command -Module NetSecurity
```

## firewall - get active profile per interface
```powershell
Get-NetConnectionProfile
```

## firewall - get status
```powershell
Get-NetFirewallProfile | ft Name,Enabled, DefaultInboundAction, DefaultOutboundAction
```

## firewall - get active profile
```powershell
 Get-NetFirewallSetting -PolicyStore ActiveStore | Select-Object -ExpandProperty ActiveProfile
```

##  firewall -  get profile active rules (summary)
```powershell
Get-NetFirewallProfile  -Name <profile> | Get-NetFirewallRule | Where-Object {$_.Direction -eq "<direction|Inbound>" -And $_.Enabled -eq $True } |  Format-Table  -AutoSize -Property Name,DisplayName, Enabled, Direction , Action
```
##  firewall -  get profile active rules (detailed)
```powershell
Get-NetFirewallProfile  -Name <profile> | Get-NetFirewallRule | Where-Object {$_.Direction -eq "<direction|Inbound>" -And $_.Enabled -eq $True } | Format-Table -AutoSize -Property Name,DisplayName, @{Name="Protocol";Expression={($PSItem | Get-NetFirewallPortFilter).Protocol}}, @{Name="LocalPort";Expression={($PSItem | Get-NetFirewallPortFilter).LocalPort}},@{Name="RemotePort";Expression={($PSItem | Get-NetFirewallPortFilter).RemotePort}}, @{Name="RemoteAddress";Expression={($PSItem | Get-NetFirewallAddressFilter).RemoteAddress}}, Action
```

##  firewall -  get active profile active rules (summary)
```powershell
Get-NetFirewallRule -Enabled true -Direction "<direction|Inbound>" -PolicyStore ActiveStore |  Format-Table -AutoSize -Property Profile, Name,DisplayName, Action
```

##  firewall -  get active profile active rules (detailed)
```powershell
Get-NetFirewallRule -Enabled true -Direction "<direction|Inbound>" -PolicyStore ActiveStore | Format-Table -AutoSize -Property Name,DisplayName, @{Name="Protocol";Expression={($PSItem | Get-NetFirewallPortFilter).Protocol}}, @{Name="LocalPort";Expression={($PSItem | Get-NetFirewallPortFilter).LocalPort}},@{Name="RemotePort";Expression={($PSItem | Get-NetFirewallPortFilter).RemotePort}}, @{Name="RemoteAddress";Expression={($PSItem | Get-NetFirewallAddressFilter).RemoteAddress}}, Action
```

## firewall - get rules applied to a port
```powershell
Get-NetFirewallPortFilter | Where-Object { $_.LocalPort -eq <port_number> } | Get-NetFirewallRule | Format-Table -AutoSize -Property Name,DisplayName, @{Name="Protocol";Expression={($PSItem | Get-NetFirewallPortFilter).Protocol}}, @{Name="LocalPort";Expression={($PSItem | Get-NetFirewallPortFilter).LocalPort}},@{Name="RemotePort";Expression={($PSItem | Get-NetFirewallPortFilter).RemotePort}}, @{Name="RemoteAddress";Expression={($PSItem | Get-NetFirewallAddressFilter).RemoteAddress}}, Action
```

## firewall - get rules applied to a port (name)
```powershell
Get-NetFirewallPortFilter | Where-Object { $_.LocalPort -like "<name>*" } | Get-NetFirewallRule  | Where-Object {$_.Direction -eq "<direction|Inbound>" -And $_.Enabled -eq $True }| Format-Table -AutoSize -Property Name,DisplayName, @{Name="Protocol";Expression={($PSItem | Get-NetFirewallPortFilter).Protocol}}, @{Name="LocalPort";Expression={($PSItem | Get-NetFirewallPortFilter).LocalPort}},@{Name="RemotePort";Expression={($PSItem | Get-NetFirewallPortFilter).RemotePort}}, @{Name="RemoteAddress";Expression={($PSItem | Get-NetFirewallAddressFilter).RemoteAddress}}, Action
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

