# pwsh
% windows, network

#plateform/windows #target/local #cat/RECON/NETWORK #tag/powershell 

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