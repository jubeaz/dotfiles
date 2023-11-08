# chisel

% chisel

## chisel server (reverse pivot)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./chisel server -v -p <server_port|8000> --reverse --socks5
```

## chisel client (reverse pivot)
#plateform/windows  #target/remote  #cat/PIVOT 
```
./chisel client <server_ip>:<server_port|8000> R:<proxy_port|1080>:socks
```

## chisel server (forward pivot)
#plateform/linux  #target/remote  #cat/PIVOT 

```
./chisel server -v -p <server_port|8000> --socks5
```

## chisel client (forward pivot)
#plateform/windows  #target/remote  #cat/PIVOT 
```
./chisel client <server_ip>:<server_port|8000> socks
```

## chisel local port forwarding (reverse pivot) - forward client port on server
#plateform/linux  #target/remote  #cat/PIVOT 

This forward {clientside-host}:{clientside-port} to server {local-port}
To get the port of the client machine locally on serverside.
ex: R:2222:localhost:22 to get the client 22 (ssh) on the port 2222 of the server
| server | - 2222 <-----  |client|-127.0.0.1:22
on server : ssh -p 2222 127.0.0.1

```
./chisel client -v <server_ip>:<server_port|8000> R:<serverside-port>:<clientside-host|localhost>:<clientside-port>
```

## chisel remote port forwarding (reverse pivot) - forward server port on client
#plateform/linux  #target/remote  #cat/PIVOT 

To expose server port remotely (useful to expose your listener)
This forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445
| server | - 4444 ------->  |client|-4445 : *   <-

```
./chisel client -v <server_ip>:<server_port|8000> <clientside-host|0.0.0.0>:<clientside-port>:<serverside-host|127.0.0.1>:<serverside-port>
```
	




