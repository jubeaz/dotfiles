# tshark
% wifi, wireshark
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
```

## _repo
```
```

## _doc
```
```

## _install
```
```
## wifi - handshakes
```bash
tshark -r <wlan_dump_file> -Y "wlan_rsna_eapol.keydes.msgnr == 1 or wlan_rsna_eapol.keydes.msgnr == 2"
```

## wifi - get Management Frame Protection
```bash
tshark -r <wlan_dump_file> -Y "wlan.fc.type_subtype == 8" -T fields -e wlan.sa -e wlan.ssid -e wlan.rsn.capabilities.mfpc -e wlan.rsn.capabilities.mfpr | sort | uniq
```

## wifi - get EAP identities
```bash
tshark -r <wlan_dump_file> -Y "eap.type == 1  && eap.code == 2" -T fields -e wlan.da -e wlan.sa -e eap.identity
```


## wifi - get EAP md5 challang response
```bash
tshark -r <wlan_dump_file> -Y "(eap.code == 1 ||  eap.code == 2) && (eap.type == 4 || eap.type == 1)" -T fields -e frame.number -e wlan.da -e wlan.sa -e eap.type -e eap.md5.value -e eap.id  -e eap.identity | sort | uniq
```