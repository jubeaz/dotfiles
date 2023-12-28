# pwsh
% windows, network

#plateform/windows #target/local #cat/RECON/NETWORK #tag/powershell 


##  network - list open ports
```powershell
Get-NetTcpConnection -State Listen | where-object { $_.LocalAddress -notlike '*:*' } | Sort-Object -Property LocalAddress,LocalPort,CreationTime | select-object -property LocalAddress,LocalPort,RemoteAddress,RemotePort,State, OwningProcess, CreationTime  |ft
```

##  network - list open ports (process name)
```powershell
Get-NetTcpConnection -State Listen | where-object { $_.LocalAddress -notlike '*:*' } | Sort-Object -Property LocalAddress,LocalPort,CreationTime | select-object -property LocalAddress,LocalPort,RemoteAddress,RemotePort,State,@{'Name' = 'ProcessName';'Expression'={(Get-Process -Id $_.OwningProcess).Name}}, CreationTime  |ft
```

##  network - list established 
```powershell
Get-NetTcpConnection -State Established | where-object { $_.LocalAddress -notlike '*:*' } | Sort-Object -Property LocalAddress,LocalPort,CreationTime | select-object -property LocalAddress,LocalPort,RemoteAddress,RemotePort,State,OwningProcess, CreationTime  |ft
```


##  network - list established (process name)
```powershell
Get-NetTcpConnection -State Established | where-object { $_.LocalAddress -notlike '*:*' } | Sort-Object -Property LocalAddress,LocalPort,CreationTime | select-object -property LocalAddress,LocalPort,RemoteAddress,RemotePort,State,@{'Name' = 'ProcessName';'Expression'={(Get-Process -Id $_.OwningProcess).Name}}, CreationTime  |ft
```


## host port scan
```
foreach ($port in 1..1024) {If (($a=Test-NetConnection 192.168.210.13 -Port $port -WarningAction SilentlyContinue).tcpTestSucceeded -eq $true){ "TCP port $port is open!"}}
```
