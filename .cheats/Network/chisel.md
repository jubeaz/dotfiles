# chisel

% chisel

## chisel server (reverse pivot)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./chisel server -v -p <chisel_port> --reverse --socks5
```

## chisel client (reverse pivot)
#plateform/windows  #target/remote  #cat/PIVOT 
```
./chisel client <chisel_server_ip>:<chisel_port> R:<socks_port>:socks
```

## chisel server (forward pivot)
#plateform/linux  #target/remote  #cat/PIVOT 

```
./chisel server -v -p <chisel_port> --socks5
```

## chisel client (forward pivot)
#plateform/windows  #target/remote  #cat/PIVOT 
```
./chisel client <chisel_server_ip>:<chisel_port> socks
```

## chisel local port forwarding (reverse pivot) - forward client port on server
#plateform/linux  #target/remote  #cat/PIVOT 

This forward {clientside-host}:{clientside-port} to server {local-port} To get the port of the client machine locally on serverside.
```
./chisel client -v <chisel_server_ip>:<chisel_port> R:<serverside-port>:<clientside-host|127.0.0.1>:<clientside-port>
```

## chisel remote port forwarding (reverse pivot) - forward server port on client
#plateform/linux  #target/remote  #cat/PIVOT 

To expose server port remotely (useful to expose your listener)
This forward {serverside-host}:{serverside-port} from the server to {clientside-host}:{clientside-port}
ex : 0.0.0.0:4445:127.0.0.1:4444 expose the server 4444 listener to client 4445

```
./chisel client -v <chisel_server_ip>:<chisel_port> <clientside-host|0.0.0.0>:<clientside-port>:<serverside-host|127.0.0.1>:<serverside-port>
```
	




