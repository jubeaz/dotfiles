# aircrack-ng
% wifi, aircrack-ng
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
offline WEP/WPA/WPA2 PSK crack
```

## _repo
```
```

## _doc
```
https://www.aircrack-ng.org/doku.php?id=aircrack-ng
```

## _install
```
```

## benchmark
```
aircrack-ng -S
```

## crack wep
```bash
aircrack-ng -b <bssid> <wlan_dump_file>.cap
```


## crack wep (ivs file)
```bash
aircrack-ng -K <ivs_capture_file>
```


## crack wpa
```bash
aircrack-ng <wlan_dump_file>.cap -W <wordlist_file>
```