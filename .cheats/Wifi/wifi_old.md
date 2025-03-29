# wifi

#plateform/linux #target/remote #cat/RECON #cat/ATTACK



## hostapd-wpe - launch fake AP
```
hostapd-wpe <hostapd_conf>
```

## kismet - monitor WiFi
```
kismet -c <wlan_interface>
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
