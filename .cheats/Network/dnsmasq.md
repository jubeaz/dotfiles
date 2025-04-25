# dnsmasq
% dnsmasq, dns, dhcp
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