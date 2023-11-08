# windows
% windows, network

#plateform/windows #target/local #cat/RECON/NETWORK

## all interfaces
```
ipconfig /all
```

## print all routes
```
route print
```

## list of know hosts
```
arp -a
```

## list open ports
```
netstat -ano
```

## show hosts file
```
type C:\WINDOWS\System32\drivers\etc\hosts
```

# powershell
% windows, network

#plateform/windows #target/local #cat/RECON/NETWORK #tag/powershell 

##  get net commands
```
Get-Command -Noun NetIP* -verb Get
```

## all interfaces
```
Get-NetIPAddress
```

##  ip configuration
```
Get-NetIPConfiguration
```

##  get DNS
```
Get-DnsClientServerAddress -AddressFamily IPv4 | ft
```

## print all routes
```
Get-NetRoute
```

## list of know hosts
```
Get-NetNeighbor
```

## list open ports
```
Get-NetTCPConnection | Select-Object -Property LocalAddress, LocalPort, RemoteAddress, RemotePort, State, OwningProcess |ForEach-Object {         $_ | Add-Member -MemberType NoteProperty -Name ProcessName -Value (Get-Process -Id $_.OwningProcess).ProcessName -PassThru} |ft
```

## active TCP connections
```
Get-NetTCPConnection -State Listen
```

## detailed active TCP connections
```
Get-NetTCPConnection -State Listen | Select-Object -Property *,@{'Name' = 'ProcessName'; 'Expression'={(Get-Process -Id $_.OwningProcess).Name}}
```

## show hosts file
```
type C:\WINDOWS\System32\drivers\etc\hosts
```