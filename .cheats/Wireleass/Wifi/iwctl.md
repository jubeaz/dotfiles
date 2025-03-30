# iwctl
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## TODO
```bash
todo
```
## debug 
```bash
sudo journalctl -u iwd --no-pager --follow
```

## adapter off 
```bash
sudo iwctl adapter <wlan_adapter|phy0> set-property Powered off
```
## adapter on 
```bash
sudo iwctl adapter <wlan_adapter|phy0> set-property Powered on
```

## station status
```bash
sudo iwctl station <wlan_interface|wlan0> show
```

## station scan
```bash
sudo iwctl station <wlan_interface|wlan0> scan
```

## station list networks
```bash
sudo iwctl station <wlan_interface|wlan0> get-networks
```

## station connect
```bash
sudo iwctl station <wlan_interface|wlan0> connect <ssid>
```

## station disconnect
```bash
sudo iwctl station <wlan_interface|wlan0> disconnect
```

