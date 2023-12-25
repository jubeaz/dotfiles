# chisel

% chisel

#plateform/linux  #target/remote  #cat/PIVOT 

## reverse pivot - server
```
chisel server -v -p <chisel_port> --reverse --socks5 
```

## reverse pivot - server (powershell)
```powershell
Start-Job -ScriptBlock { Start-Process chisel.exe -ArgumentList @('server', '-p <chisel_port>',  '--reverse' '--socks5')} 
```

## reverse pivot - client
```
chisel client <chisel_server_ip>:<chisel_port> R:<socks_port>:socks
```


## reverse pivot - client (powershell)
```powershell
Start-Job -ScriptBlock { Start-Process chisel.exe -ArgumentList @('client','<chisel_server_ip>:<chisel_port>','R:<socks_port>:socks')}
```

## reverse pivot - local port forwarding (forward client port on server)
forward {clientside-host}:{clientside-port} to server {local-port} To get the port of the client machine locally on serverside.
```
./chisel client -v <chisel_server_ip>:<chisel_port> R:<serverside-port>:<clientside-host|127.0.0.1>:<clientside-port>
```

## reverse pivot - remote port forwarding (forward server port on client)
To expose server port remotely (useful to expose your listener)
forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445
```
./chisel client -v <chisel_server_ip>:<chisel_port> <clientside-host|0.0.0.0>:<clientside-port>:<serverside-host|127.0.0.1>:<serverside-port>
```

## protected reverse pivot - server
```
chisel server -v -p <chisel_port> --reverse --socks5 --auth '<chisel_login|jubeaz>:<chisel_password|Jub@z123!>'
```


## protected reverse pivot - client
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && chisel client <chisel_server_ip>:<chisel_port> R:<socks_port>:socks
```

## protected reverse pivot - local port forwarding (forward client port on server)
forward {clientside-host}:{clientside-port} to server {local-port} To get the port of the client machine locally on serverside.
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && chisel client -v <chisel_server_ip>:<chisel_port> R:<serverside-port>:<clientside-host|127.0.0.1>:<clientside-port>
```

## protected reverse pivot - remote port forwarding (forward server port on client)
To expose server port remotely (useful to expose your listener)
forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && ./chisel client -v <chisel_server_ip>:<chisel_port> <clientside-host|0.0.0.0>:<clientside-port>:<serverside-host|127.0.0.1>:<serverside-port>
```

## forward pivot - server (forward pivot)
```
./chisel server -v -p <chisel_port> --socks5
```

## forward pivot - client 
```
./chisel client <chisel_server_ip>:<chisel_port> socks
```

## protected forward pivot - protected server
```
chisel server -v -p <chisel_port> --socks5 --auth '<chisel_login|jubeaz>:<chisel_password|Jub@z123!>'
```


## protected forward pivot - client 
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && chisel client <chisel_server_ip>:<chisel_port> socks
```

	




