# airodump-ng

#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## desc
```
capture packets
```


## dump
```
sudo airodump-ng <wlan_interface>mon
```


## dump bssid
```
sudo airodump-ng -c <wlan_channel> --bssid <bssid> <wlan_interface>mon
```

## dump bssid prefix
all starting with 00:1C:10
```
sudo airodump-ng -d 00:1C:10:00:00:00 -m FF:FF:FF:00:00:00 <wlan_interface>mon
```

## dump channel
```
sudo airodump-ng -c <wlan_channel_comma_sep_list> <wlan_interface>mon
```

## dump band (5GHz)
```
sudo airodump-ng --band a <wlan_interface>mon 
```

## dump to file
```
sudo airodump-ng  <wlan_interface>mon -w <wlan_dump_file>
```

## dump to file (5GHz)
```
sudo airodump-ng --band a <wlan_interface>mon -w <wlan_dump_file>
```

## dump to file specific bssid (5GHz)
```
sudo airodump-ng --band a --bssid <mac_address> <wlan_interface>mon -w <wlan_dump_file>
```