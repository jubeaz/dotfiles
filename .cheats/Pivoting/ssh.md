# Pivoting-ssh

% ssh, pivoting

## Local port forwarding 
#cat/PIVOT/TUNNEL-PORTFW 

Local port is forwarded to remote port
```
ssh -L <local_port>:<remote_host>:<remote_port> <user>@<ip>
```
		
## Dynamic port forwarding
#cat/PIVOT/TUNNEL-PORTFW 
```
ssh -D <socks_port> <user>@<ip>
```

## Remote port forwarding 
#cat/PIVOT/TUNNEL-PORTFW 

```
ssh -R <remote_binding>:<remote_port>:<local_host>:<local_port> <user>@<ip>
```
