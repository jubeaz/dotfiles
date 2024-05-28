# socat

% socat
#plateform/linux  #target/remote  #cat/PIVOT 

## desc
```
http://www.dest-unreach.org/socat/
```

## local port redirection to port 
```bash
socat TCP4-LISTEN:<listen_port>,fork,reuseaddr TCP4:<redirection_ip|localhost>:<redirection_port>
```
## local port redirection to file
```bash
socat TCP4-LISTEN:<listen_port>,fork,reuseaddr OPEN:<file_path>,creat,append
```

## local port redirection to socket
```bash
socat TCP4-LISTEN:<listen_port>,fork,reuseaddr UNIX-CONNECT:<socket_path>
```

## port forwarding listener (on local machine)
```
./socat TCP-LISTEN:<port_listener|4444>,fork,reuseaddr TCP-LISTEN:<port_to_forward>
```

## port forwarding connect (on remote machine)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./socat TCP:<connect_ip>:<connect_port|4444> TCP:127.0.0.1:<port_to_forward>
```

