# hcxdumptool
% wifi, hcxdumptool, wpa, wpa2, pmkid
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
A tool to capture packets from WLAN devices and to discover potential weak points within own WiFi networks by running layer 2 attacks against the WPA protocol.
```

## _repo
```
https://github.com/ZerBea/hcxdumptool
```

## _doc
```
https://github.com/ZerBea/hcxdumptool
```

## _install
```
```

## recon PMKID
```bash
hcxdumptool -i <wlan_interface|wmon> --enable_status=3
```

## capture PMKID of AP
```bash
hcxdumptool -i <wlan_interface|wmon> --enable_status=3 --filterlist_ap=<bssid> --filtermode=2 -o <wlan_pmkid_dump_file>.pcap
```