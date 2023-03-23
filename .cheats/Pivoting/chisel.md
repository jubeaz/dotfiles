# Pivoting-chisel

% chisel, pivoting

## tuneling server (Reverse pivot)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./chisel server -v -p <server_port|8000> --reverse --socks5
```
		
## tunneling client (Reverse pivot)
#plateform/windows  #target/remote  #cat/PIVOT 
```
./chisel client <server_ip>:<server_port> R[:port]:socks
```

## tuneling server (pivot)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./chisel server -v -p <server_port|8000> --socks5
```

## tunneling client (pivot)
#plateform/windows  #target/remote  #cat/PIVOT 
```
./chisel client <server_ip>:<server_port> socks
```
chisel client -v 10.10.16.5:4455 R:socks

## Local port forwarding (Reverse pivot) 
#plateform/linux  #target/remote  #cat/PIVOT 

This forward {clientside-host}:{clientside-port} to server {local-port}
To get the port of the client machine locally on serverside.
ex: R:2222:localhost:22 to get the client 22 (ssh) on the port 2222 of the server

```
./chisel client -v <server_ip>:<server_port|8000> R:<serverside-port>:<clientside-host|localhost>:<clientside-port>
```

## remote port forwarding (Reverse pivot) 
#plateform/linux  #target/remote  #cat/PIVOT 

To expose server port remotely (useful to expose your listener)
This forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445
| server | - 4444 ------->  |client|-4445 : *   <-

```
./chisel client -v <server_ip>:<server_port|8000> <clientside-host|0.0.0.0>:<clientside-port>:<serverside-host|127.0.0.1>:<serverside-port>
```
