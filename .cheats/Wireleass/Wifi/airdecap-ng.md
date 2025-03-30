# airdecap-ng
% wifi, airdecap-ng
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
decrypt WEP/WPA/WPA2 capture files. As well, it can also be used to strip the wireless headers from an unencrypted wireless capture
```

## _repo
```
```

## _doc
```
https://www.aircrack-ng.org/doku.php?id=airdecap-ng
```

## _install
```
```

## decrypt wep
```bash
airdecap-ng -w <wep_hexa_key> <capture_file>
```

## decrypt wpa
```bash
airdecap-ng -p <passphrase> <capture_file> -e <essid>
```