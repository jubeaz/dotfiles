# pwsh
% windows, network, port proxy

#plateform/windows #target/local #cat/UTILS/NETWORK #tag/powershell

## Port Forwarding - list rules (registry)
```powershell
Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\PortProxy\v4tov4\tcp
```

## Port Forwarding - list rules
```powershell 
netsh interface portproxy show all
```

## Port Forwarding - dump rules
```powershell
netsh interface portproxy dump
```

## Port Forwarding - add rule
```powershell
netsh interface portproxy add v4tov4 listenport=<l_port> listenaddress=<l_ip> connectport=<r_port> connectaddress=<r_ip>
```

## Port Forwarding - remove rule
```powershell
netsh interface portproxy delete v4tov4 listenport=<l_port> listenaddress=<l_ip>
```