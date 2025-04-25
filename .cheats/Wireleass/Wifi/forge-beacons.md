# forge-beacons
% wifi, eaphammer, wpa-enterprise, wpa2-enterprise, eap, peap, forge-beacons, Known Beacon Attack
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
EAPHammer script to perform Known Beacon Attack
```

## _repo
```
https://github.com/s0lst1c3/eaphammer
```

## _doc
```
https://github.com/s0lst1c3/eaphammer/wiki
```

## _install
```
```

## known beacon attack
```bash
/usr/share/eaphammer/forge-beacons -i <wlan_interface|wlan0> --bssid $(cat /sys/class/net/<wlan_ap_interface|wlan0ap>/address) --known-essids-file <ssid_wordlist> --dst-addr <wlan_station_mac> --burst-count <beacon_counts|5>
```