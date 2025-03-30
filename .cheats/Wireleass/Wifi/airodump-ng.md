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


## scan wps
```bash
sudo airodump-ng --wps --ignore-negative-one <wlan_interface|wmon>
```


## scan wps bssid
```bash
sudo airodump-ng --wps --ignore-negative-one -c <wlan_channel> --bssid <bssid> <wlan_interface|wmon>
```

## scan
```bash
sudo airodump-ng <wlan_interface|wmon>
```


## scan bssid
```bash
sudo airodump-ng -c <wlan_channel> --bssid <bssid> <wlan_interface|wmon>
```

## scan bssid prefix
all starting with 00:1C:10
```bash
sudo airodump-ng -d 00:1C:10:00:00:00 -m FF:FF:FF:00:00:00 <wlan_interface|wmon>
```

## scan channel
```bash
sudo airodump-ng -c <wlan_channel_comma_sep_list> <wlan_interface|wmon>
```

## scan band (5GHz)
```bash
sudo airodump-ng --band a <wlan_interface|wmon> 
```

## dump to file
```bash
sudo airodump-ng  <wlan_interface|wmon> -w <wlan_dump_file>
```

## dump to file (5GHz)
```bash
sudo airodump-ng --band a <wlan_interface|wmon> -w <wlan_dump_file>
```

## dump to file specific bssid 
```bash
sudo airodump-ng -c <wlan_channel> --bssid <mac_address> <wlan_interface|wmon> -w <wlan_dump_file>
```


## dump ivs to file
```bash
sudo airodump-ng  <wlan_interface|wmon> --ivs -w <wlan_dump_file>
```

## dump ivs to file (5GHz)
```bash
sudo airodump-ng --band a <wlan_interface|wmon> --ivs -w <wlan_dump_file>
```

## dump ivs to file specific bssid (hannel)
```bash
sudo airodump-ng --ivs -c <wlan_channel> --bssid <mac_address> <wlan_interface|wmon> -w <wlan_dump_file>
```