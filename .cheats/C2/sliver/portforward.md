# sliver

% sliver, C2


## pivot - add reverse port forward
```bash
rportfwd add -r <remote_ip|127.0.0.1>:<remote_port|80> -b <implant_listening_ip>:<implant_listening_port>
```

## pivot - Socks
```bash
socks5 start --port <port|1080>
```