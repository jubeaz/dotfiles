# ssh

% ssh, 22
#plateform/linux  #target/remote  #protocol/ssh #port/22


## Key - get server
#cat/UTILS 
```
ssh-keyscan -t rsa <IP> -p <PORT>
```

## Key - generate (ed25519)
#cat/UTILS 
```
ssh-keygen -t ed25519 -f 
```

## Agent - Start
#target/local #cat/UTILS 
```
eval "$(ssh-agent -s)"; ssh-add
```

## Connect - sshpass 
#cat/PIVOT/TUNNEL-PORTFW 
```
sshpass -p <password> ssh <user>@<ip>
```

## Connect - key 
#cat/PIVOT/TUNNEL-PORTFW 
```
ssh -i <ssh_priv_key> <user>@<ip>
```

## Connect - old algorithm
#cat/UTILS 
```
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 <user>@<ip>
```

## copy - from target
```
scp <username-remote>@<ip>:<file-to-send-path> <path-to-recieve> 
```

## copy - to target
```
scp <file-to-send> <username-remote>@<ip>:<where-to-put>
```


## copy - from target (sshpass)
```
sshpass -p <password>scp <username-remote>@<ip>:<file-to-send-path> <path-to-recieve> 
```

## copy - to target (sshpass)
```
sshpass -p <password> scp <file-to-send> <username-remote>@<ip>:<where-to-put>
```

## Port forwarding - local 
#cat/PIVOT/TUNNEL-PORTFW 
SSH client listens on a given port and tunnels any connection to that port to the specified port on the remote SSH server, which then connects to a port on the destination machine. The destination machine can be the remote SSH server or any other machine.

can perform multiple -L

```
ssh -q -L <local_port>:<remote_host>:<remote_port> <user>@<ip>
```

## Port forwarding - local (sshpass)
#cat/PIVOT/TUNNEL-PORTFW 
SSH client listens on a given port and tunnels any connection to that port to the specified port on the remote SSH server, which then connects to a port on the destination machine. The destination machine can be the remote SSH server or any other machine.
```
sshpass -p <password> ssh -q -L <local_port>:<remote_host>:<remote_port> <user>@<ip>
```

## Port forwarding - remote  
#cat/PIVOT/TUNNEL-PORTFW 
(send local port to remote) (need GatewayPorts yes)

SSH server listens on a given port and tunnels any connection to that port to the specified port on the local SSH client, which then connects to a port on the destination machine. The destination machine can be the local or any other machine.

```
ssh -q -R <pivot_internal_ip>:<pivot_port>:<local_host>:<local_port> <user>@<ip> -vN
```

## Port forwarding - remote (sshpass)
#cat/PIVOT/TUNNEL-PORTFW 
(send local port to remote) (need GatewayPorts yes)

SSH server listens on a given port and tunnels any connection to that port to the specified port on the local SSH client, which then connects to a port on the destination machine. The destination machine can be the local or any other machine.

```
sshpass -p <password> ssh -q -R <pivot_internal_ip>:<pivot_port>:<local_host>:<local_port> <user>@<ip> -vN
```

## Port forwarding - dynamic
#cat/PIVOT/TUNNEL-PORTFW 
```
ssh -q -D <socks_port> <user>@<ip>
```

## Port forwarding - dynamic (sshpass) 
#cat/PIVOT/TUNNEL-PORTFW 
```
sshpass -p <password> ssh -q -D <socks_port> <user>@<ip>
```


## msf - bruteforce username
#cat/ATTACK/BRUTEFORCE-SPRAY 
```
msfconsole -x "use scanner/ssh/ssh_enumusers; set RHOSTS <ip>; set USER_FILE <user_file>; set CHECK_FALSE true; exploit"
```



## putty - extract private key from .ppk
#cat/UTILS 
```
puttygen <ppk_file> -O private-openssh -o <private_key>
```

## putty - extract private key from .ppk
#cat/UTILS 
```
puttygen <ppk_file> -O public-openssh -o <private_key>
```
