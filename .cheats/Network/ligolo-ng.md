# ligolo-ng

% ligolo-ng

#plateform/linux  #target/remote  #cat/PIVOT 


## _url
```
https://github.com/Nicocha30/ligolo-ng
```

## _desc
```

```

## _links
```
https://github.com/nicocha30/ligolo-ng/wiki
```


## Server - start
```bash
sudo ligolo-ng-proxy  -selfcert -laddr <ip|0.0.0.0>:<port|11601>
```

## Server - interface - create
```bash
ifcreate --name <name | ligolo>
```

## Server - interface - list
```bash
iflist
```

## Server - interface - delete
```bash
ifdel --name <name | ligolo>
```

## Server - start tunnel
associate an agent with a tunnel
```bash
tunnel_start --tun <name | ligolo>
```

## Server - setup route
```bash
route_add --name <name | ligolo> --route <cidr>
```

## Agent - connect 
```bash
agent.exe -ignore-cert -connect <server_ip>:<port|11601>
```

## Agent - connect (check cert)
server ip or proxy ip
```bash
agent.exe -accept-fingerprint <fp> -connect <server_ip>:<port|11601>
```

## Agent - start Listener
Redirect port from the agent to the server
```bash
listener_add --addr <bind_ip|0.0.0.0>:<bind_port> --to <target_ip|127.0.0.1>:<target_port> --tcp
```

## Agent - list Listener
```bash
listener_list
```

## Agent - list stop
```bash
listener_stop <id>
```