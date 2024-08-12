# pwsh
% windows, network

#plateform/windows #target/local #cat/RECON/NETWORK #tag/powershell 

## network - basic adapters info
```powershell
Get-NetAdapter | Format-List -Property ifAlias,PromiscuousMode
```

##  network - get net commands
```
Get-Command -Noun NetIP* -verb Get
```

##  network - all IP address
```
Get-NetIPAddress |ft
```

##  network -  ip configuration
```
Get-NetIPConfiguration
```

##  network -  get DNS
```
Get-DnsClientServerAddress -AddressFamily IPv4 | ft
```

##  network - print all routes
```
Get-NetRoute
```

##  network - list of know hosts
```
Get-NetNeighbor
```

##  network - show hosts file
```
type C:\WINDOWS\System32\drivers\etc\hosts
```

## network - ping sweep
```powershell
	
1..254 | % {"172.16.2.$($_): $(Test-Connection -count 1 -comp 1172.16.2.$($_) -quiet)"}
```