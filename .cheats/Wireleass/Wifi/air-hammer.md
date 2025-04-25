# air-hammer
% wifi, air-hammer
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
WPA Enterprise horizontal brute-force attack tool
```

## _repo
```
```

## _doc
```
https://github.com/Wh1t3Rh1n0/air-hammer
```

## _install
```
```

## brute force
```bash
echo "<domain_netbios>\<username>" > user.txt && python2 air-hammer.py -i <wlan_interface|wlan0> -e <ssid> -p <wordlist> -u user.txt
```

## spray
```bash
cat statistically-likely-usernames/john.txt | awk '{print "<domain_netbios>\\" $1}' > users.txt && python2 air-hammer.py -i <wlan_interface|wlan0> -e <ssid> -P <password> -u users.txt
```