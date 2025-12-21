# pwsh
% windows, network, port proxy

#plateform/windows #target/local #cat/UTILS/NETWORK #tag/powershell

##  adidns - zone enum
```powershell
Get-DnsServerZone
```

##  adidns - conditional forwarders 
```powershell
Get-DnsServerZone | Where-Object ZoneType -eq Forwarder | Select-Object ZoneName, MasterServers
```

