# packetforge-ng 
% wifi, packetforge-ng 
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
create encrypted packets that can subsequently be used for injection
```

## _repo
```
```

## _doc
```
https://www.aircrack-ng.org/doku.php?id=packetforge-ng
```

## _install
```
```

## forge - ARP request
use tcpdump -s 0 -n -e -r <prga_keystream_file>.cap to obtain ips use 255.255.255.255 if no ip found
```bash
packetforge-ng --arp -a <bssid> -h <target_mac> -k <wlan_ap_ip> -l <wlan_station_ip> -y <prga_keystream_file>.xor -w <forged_arp_fle>.cap
```
