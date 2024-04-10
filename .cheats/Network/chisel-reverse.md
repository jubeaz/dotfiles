# chisel-reverse

% chisel

#plateform/linux  #target/remote  #cat/PIVOT 

## server
```bash
chisel server -v -p <chisel_port> --reverse --socks5 
```

## server (powershell)
probable unfiltered ports:
    https://learn.microsoft.com/en-us/troubleshoot/windows-server/networking/service-overview-and-network-port-requirements

```powershell
Start-Job -Name chisel-server -ScriptBlock { Start-Process chisel.exe -ArgumentList @('server', '-p', '<chisel_port>',  '--reverse' '--socks5')} 
```

## protected server
```
chisel server -v -p <chisel_port> --reverse --socks5 --auth '<chisel_login|jubeaz>:<chisel_password|Jub@z123!>'
```

## client
```bash
chisel client <chisel_server_ip>:<chisel_port> R:<socks_port>:socks
```

## client (protected server)
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && chisel client <chisel_server_ip>:<chisel_port> R:<socks_port>:socks
```


## client (powershell)
```powershell
New-Service -name "<service_name|chisel-jubeaz-client>" -binaryPathName "<chisel_path|c:\temp\chisel.exe> client <chisel_server_ip>:<chisel_port> R:<socks_port>:socks" -displayName "<service_name|chisel-jubeaz-client>" -startupType Automatic | start-service
```


## client as a service (powershell)
```powershell
Start-Job -Name chisel-client -ScriptBlock { Start-Process chisel.exe -ArgumentList @('client','<chisel_server_ip>:<chisel_port>','R:<socks_port>:socks')}
```

## local port forwarding 

forward client port to server port (get the port of the client machine locally on serverside).

```
./chisel client -v <chisel_server_ip>:<chisel_port> R:<chisel_server_ip>:<chisel_server_f_port>:<chisel_client_ip|127.0.0.1>:<chisel_client_f_port>
```

## local port forwarding (protected server)
forward client port to server port (get the port of the client machine locally on serverside).

```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && chisel client -v <chisel_server_ip>:<chisel_port> R:<chisel_server_ip>:<chisel_server_f_port>:<chisel_client_ip|127.0.0.1>:<chisel_client_f_port>
```

## remote port forwarding
To expose server port remotely (useful to expose your listener)
probable unfiltered ports:
    https://learn.microsoft.com/en-us/troubleshoot/windows-server/networking/service-overview-and-network-port-requirements
    
forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445
```
./chisel client -v <chisel_server_ip>:<chisel_port> <chisel_client_ip|0.0.0.0>:<chisel_client_f_port>:<chisel_server_ip>:<chisel_server_f_port>
```

## remote port forwarding (protected server)
To expose server port remotely (useful to expose your listener)
probable unfiltered ports:
    https://learn.microsoft.com/en-us/troubleshoot/windows-server/networking/service-overview-and-network-port-requirements
    
forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && ./chisel client -v <chisel_server_ip>:<chisel_port> <chisel_client_ip|0.0.0.0>:<chisel_client_f_port>:<chisel_server_ip>:<chisel_server_f_port>
```


