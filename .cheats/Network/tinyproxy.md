# tinyproxy

% tinyproxy, forward proxy

#plateform/linux  #target/local  #cat/PROXY

## stop service
```bash
sudo systemctl stop tinyproxy.service
```
## start service
```bash
sudo systemctl start tinyproxy.service
```

## status service
```bash
sudo systemctl start tinyproxy.service
```

## check logs
```bash
sudo journalctl -f -u tinyproxy
```

## set listen on tun0
```bash
tun0_ip=$(ip -f inet a show tun0 | grep inet | sed -n 's/.*inet \([0-9.]\+\).*/\1/p');sudo sed -i "s/^Listen .*/Listen ${tun0_ip}/g" /etc/tinyproxy/tinyproxy.conf 
```

## set port
```bash
sudo sed -i "s/^Port \([0-9]\+\).*/Port <proxy_port> /g" /etc/tinyproxy/tinyproxy.conf
``` 

## set allow on target
```bash
sudo sed -i "s/^Allow \([0-9.]\+\).*/Allow <ip>/g" /etc/tinyproxy/tinyproxy.conf
``` 

## set auth
```bash
sudo sed -i "s/^BasicAuth .*/BasicAuth <proxy_login> <proxy_password>/g" /etc/tinyproxy/tinyproxy.conf
``` 