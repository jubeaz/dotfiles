# wpa_supplicant
% wifi, wpa_supplicant
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```

```

## _repo
```
```

## _doc
```
https://wiki.archlinux.org/title/Wpa_supplicant
```

## _install
```
```

## generate EAP-MSCHAPV2
```bash
echo -e 'network={\n  ssid="<ssid>"\n  scan_ssid=1\n  key_mgmt=WPA-EAP\n  identity="<domain_netbios>\<username>"\n  password="<password>"\n  eap=PEAP\n  phase1="peaplabel=0"\n  phase2="auth=MSCHAPV2"\n}' > ./wpa_supplicant.conf
```

## connect
```bash
wpa_supplicant -i <wlan_interface|wlan0> -c ./wpa_supplicant.conf
```

## dhcp
```bash
sudo dhclient -r -v <wlan_interface|wlan0>  ; sudo dhclient -v <wlan_interface|wlan0> 
```