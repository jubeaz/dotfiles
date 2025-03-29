# airodump-ng
% wifi, airodump-ng
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
capture packets
```

## _repo
```
```

## _doc
```
https://www.aircrack-ng.org/doku.php?id=airodump-ng
```

## _install
```
```


## scan
```
sudo airodump-ng <wlan_interface|wmon>
```


## scan bssid
```
sudo airodump-ng -c <wlan_channel> --bssid <bssid> <wlan_interface|wmon>
```

## scan bssid prefix
all starting with 00:1C:10
```
sudo airodump-ng -d 00:1C:10:00:00:00 -m FF:FF:FF:00:00:00 <wlan_interface|wmon>
```

## scan channel
```
sudo airodump-ng -c <wlan_channel_comma_sep_list> <wlan_interface|wmon>
```

## scan band (5GHz)
```
sudo airodump-ng --band a <wlan_interface|wmon> 
```

## dump to file
```
sudo airodump-ng  <wlan_interface|wmon> -w <wlan_dump_file>
```

## dump to file (5GHz)
```
sudo airodump-ng --band a <wlan_interface|wmon> -w <wlan_dump_file>
```

## dump to file specific bssid (5GHz)
```
sudo airodump-ng --band a --bssid <mac_address> <wlan_interface|wmon> -w <wlan_dump_file>
```


## dump ivs to file
```
sudo airodump-ng  <wlan_interface|wmon> --ivs -w <wlan_dump_file>
```

## dump ivs to file (5GHz)
```
sudo airodump-ng --band a <wlan_interface|wmon> --ivs -w <wlan_dump_file>
```

## dump ivs to file specific bssid (5GHz)
```
sudo airodump-ng --ivs --band a --bssid <mac_address> <wlan_interface|wmon> -w <wlan_dump_file>
```