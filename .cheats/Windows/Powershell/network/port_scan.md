# pwsh
% windows, network, port proxy

#plateform/windows #target/local #cat/UTILS/NETWORK #tag/powershell

##  network - scan 1 port
```powershell
Test-NetConnection <ip> -Port <port> -InformationLevel quiet
```

##  network - traceroute
```powershell
Test-NetConnection <ip> –TraceRoute
```

##  network - port first 1024 scan
```powershell
foreach ($port in 1..1024) {If ((Test-NetConnection <ip> -Port $port -WarningAction SilentlyContinue).tcpTestSucceeded -eq $true){ "TCP port $port is open!"}}