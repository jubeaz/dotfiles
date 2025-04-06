# hostapd-wpe
% wifi, hostapd-wpe, Access Point, rogue AP, evil-twin
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
hostapd-wpe is the replacement for FreeRADIUS-WPE. It implements IEEE 802.1x Authenticator and Authentication Server impersonation attacks to obtain client credentials, establish connectivity to the client, and launch other attacks where applicable.
```

## _repo
```
https://github.com/aircrack-ng/aircrack-ng/blob/master/patches/wpe/hostapd-wpe/README.md
```

## _doc
```
https://github.com/aircrack-ng/aircrack-ng/blob/master/patches/wpe/hostapd-wpe/README.md
```

## _install
```
```

## download config
```bash
curl -sL https://raw.githubusercontent.com/aircrack-ng/aircrack-ng/master/patches/wpe/hostapd-wpe/hostapd-2.11-wpe.patch | patch -p1 -f -d /tmp  ; cp /tmp/hostapd/hostapd-wpe.conf . ; cp /tmp/hostapd/hostapd-wpe.eap_user .
```

## configure
```bash
sed -i 's/^interface=.*/interface=<wlan_interface|wlan0>/' hostapd-wpe.conf && sed -i 's/^ssid=.*/ssid=<ssid>/' hostapd-wpe.conf && sed -i 's/^channel=.*/channel=<wlan_channel>/' hostapd-wpe.conf 
```

## launch fake AP
```
hostapd-wpe <hostapd_conf|hostapd-wpe.conf>
```