# ssh

% ssh, 22
#plateform/linux  #target/remote  #protocol/ssh #port/22


## config - allow remote port forwarding
```bash
cat /etc/ssh/sshd_config | grep GatewayPorts
```

## config - allow remote port forwarding
OpenSSH options -L, -D, and -W all use "local" forwarding; -R uses "remote" forwarding.
```bash
cat /etc/ssh/sshd_config | grep AllowTcpForwarding
```

## Key - get server
#cat/UTILS 
```bash
ssh-keyscan -t rsa <IP> -p <PORT>
```

## Key - generate (ed25519)
#cat/UTILS 
```bash
ssh-keygen -t ed25519 -f <ssh_key_name> -C "<ssh_key_comment>"
```

## Key - copy to server
#cat/UTILS 
```bash
ssh-copy-id -i <ssh_key_name>.pub <user>@<target>
```

## Agent - Start
#target/local #cat/UTILS 
```bash
eval "$(ssh-agent -s)"; ssh-add
```

## Connect - sshpass 
#cat/PIVOT/TUNNEL-PORTFW 
```bash
sshpass -p <password> ssh <user>@<ip>
```

## Connect - key 
#cat/PIVOT/TUNNEL-PORTFW 
```bash
ssh -i <ssh_priv_key> <user>@<ip>
```

## Connect - kerberos (kinit)

```bash
kinit <samaccountname>@<REALM_NAME> && ssh -K <samaccountname>@<target_fqdn>
```

## Connect - kerberos (ccache)
```bash
KRB5CCNAME="$(pwd)/<ccache>" ssh -K <samaccountname>@<target_fqdn>
```

## Connect - old algorithm
#cat/UTILS 
```bash
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 <user>@<ip>
```

## copy - from target (kerberos)
```bash
scp -o GSSAPIAuthentication=yes <username-remote>@<target_fqdn>:<file-to-send-path> <path-to-recieve> 
```

## copy - to target (kerberos)
```bash
scp -o GSSAPIAuthentication=yes <file-to-send> <username-remote>@<target_fqdn>::<where-to-put>
```

## copy - from target
```bash
scp <username-remote>@<ip>:<file-to-send-path> <path-to-recieve> 
```

## copy - to target
```bash
scp <file-to-send> <username-remote>@<ip>:<where-to-put>
```


## copy - from target (sshpass)
```bash
sshpass -p <password>scp <username-remote>@<ip>:<file-to-send-path> <path-to-recieve> 
```

## copy - to target (sshpass)
```bash
sshpass -p <password> scp <file-to-send> <username-remote>@<ip>:<where-to-put>
```

## Port forwarding - local 
#cat/PIVOT/TUNNEL-PORTFW 
SSH client listens on a given port and tunnels any connection to that port to the specified port on the remote SSH server, which then connects to a port on the destination machine. The destination machine can be the remote SSH server or any other machine.

can perform multiple -L

```bash
ssh -q -L [<local_bind_port>:]<target_bind_ip|0.0.0.0>:<target_bind_port> <user>@<target_connect_ip>
```

## Port forwarding - local (sshpass)
#cat/PIVOT/TUNNEL-PORTFW 
SSH client listens on a given port and tunnels any connection to that port to the specified port on the remote SSH server, which then connects to a port on the destination machine. The destination machine can be the remote SSH server or any other machine.
```bash
sshpass -p <password> ssh -q -L [<local_bind_port>:]<target_bind_ip|0.0.0.0>:<target_bind_port> <user>@<target_connect_ip>
```

## Port forwarding - remote  
#cat/PIVOT/TUNNEL-PORTFW 
will not work if  "GatewayPorts no" in ssh server conf (yes by default)

SSH server listens on a given port (target_bind_port) and tunnels any connection to that port to the fwd_host:fwd_port.

```bash
ssh -q -R [<target_bind_ip>:]<target_bind_port>:<fwd_host>:<fwd_port> <user>@<target_connect_ip> -vN
```

## Port forwarding - remote (sshpass)
#cat/PIVOT/TUNNEL-PORTFW 
will not work if  "GatewayPorts no" in ssh server conf (yes by default)

SSH server listens on a given port (target_bind_port) and tunnels any connection to that port to the fwd_host:fwd_port.

```bash
sshpass -p <password> ssh -q -R [<target_bind_ip>:]<target_bind_port>:<fwd_host>:<fwd_port> <user>@<target_connect_ip> -vN
```

## Port forwarding - remote dynamic 
#cat/PIVOT/TUNNEL-PORTFW 
```bash
ssh -q -R [<target_bind_ip>:]<target_bind_port> <user>@<target_connect_ip> -vN
```

## Port forwarding - remote dynamic (sshpass)
#cat/PIVOT/TUNNEL-PORTFW 
```bash
sshpass -p <password> ssh -q -R [<target_bind_ip>:]<target_bind_port> <user>@<target_connect_ip> -vN
```

## Port forwarding - check (on server)
or:
(client) nc -lnvp <port>
(server) nc localhost <port>
```bash
nc -z localhost <port> || echo "no tunnel open"
``` 


## Port forwarding - check (ss)
```bash
ss -tlnp
``` 

## Port forwarding - dynamic
#cat/PIVOT/TUNNEL-PORTFW 
```bash
ssh -q -D <socks_port> <user>@<target_connect_ip>
```

## Port forwarding - dynamic (sshpass) 
#cat/PIVOT/TUNNEL-PORTFW 
```bash
sshpass -p <password> ssh -q -D <socks_port> <user>@<target_connect_ip>
```


## msf - bruteforce username
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
msfconsole -x "use scanner/ssh/ssh_enumusers; set RHOSTS <ip>; set USER_FILE <user_file>; set CHECK_FALSE true; exploit"
```



## putty - extract private key from .ppk
#cat/UTILS 
```bash
puttygen <ppk_file> -O private-openssh -o <private_key>
```

## putty - extract private key from .ppk
#cat/UTILS 
```bash
puttygen <ppk_file> -O public-openssh -o <private_key>
```
