# iwconfig
#plateform/linux #target/remote #cat/RECON #cat/ATTACK


## Current mode
```bash
sudo iwconfig
```

## set mode: control
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> set monitor control && sudo ip link set <wlan_interface|wlan0> up 
```

## set mode: managed (station)
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> set monitor managed && sudo ip link set <wlan_interface|wlan0> up 
```


## set mode: ad-hoc
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> set monitor ad-hoc && sudo iwconfig <wlan_interface|wlan0> essid <ssid> && sudo ip link set <wlan_interface|wlan0> up 
```