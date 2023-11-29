# ssh

% ssh, 22
#plateform/linux  #target/remote  #protocol/ssh #port/22

## Start ssh agent
#target/local #cat/UTILS 
```
eval "$(ssh-agent -s)"; ssh-add
```

## local port forwarding (get remote_port on local)
#cat/PIVOT/TUNNEL-PORTFW 

can perform multiple -L

```
ssh -q -L <local_port>:<remote_host>:<remote_port> <user>@<ip>
```

## sshpass local port forwarding (get remote_port on local)
#cat/PIVOT/TUNNEL-PORTFW 
```
sshpass -p <password> ssh -q -L <local_port>:<remote_host>:<remote_port> <user>@<ip>
```

## remote port forwarding (send local port to remote) (need GatewayPorts yes)
#cat/PIVOT/TUNNEL-PORTFW 
```
ssh -q -R <pivot_internal_ip>:<pivot_port>:<local_host>:<local_port> <user>@<ip> -vN
```

## sshpass port forwarding (send local port to remote) (need GatewayPorts yes)
#cat/PIVOT/TUNNEL-PORTFW 
```
sshpass -p <password> ssh -q -R <pivot_internal_ip>:<pivot_port>:<local_host>:<local_port> <user>@<ip> -vN
```

## dynamic port forwarding (proxysocks)
#cat/PIVOT/TUNNEL-PORTFW 
```
ssh -q -D <socks_port> <user>@<ip>
```

## sshpass dynamic port forwarding (proxysocks) 
#cat/PIVOT/TUNNEL-PORTFW 
```
sshpass -p <password> ssh -q -D <socks_port> <user>@<ip>
```

## get public ssh key of server
#cat/UTILS 
```
ssh-keyscan -t rsa <IP> -p <PORT>
```

## generate ssh key (ed25519)
#cat/UTILS 
```
ssh-keygen -t ed25519 -f 
```

## msf - bruteforce username
#cat/ATTACK/BRUTEFORCE-SPRAY 
```
msfconsole -x "use scanner/ssh/ssh_enumusers; set RHOSTS <ip>; set USER_FILE <user_file>; set CHECK_FALSE true; exploit"
```

## SSH - old algorithm
#cat/UTILS 
```
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 <user>@<ip>
```
