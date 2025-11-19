# tshark
% wifi, wireshark, pcap
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
```

## _repo
```
```

## _doc
```
https://semfionetworks.com/wp-content/uploads/2021/04/wireshark_802.11_filters_-_reference_sheet.pdf
```

## _install
```
```

## kerberos - 
```bash
tshark -r <wlan_dump_file> -Y "kerberos"
```


## kerberos - as_req
from Krb5RoastParser 
Warning domain is incomplete
```bash
tshark -r <wlan_dump_file> -Y "kerberos.msg_type == 10 && kerberos.CNameString && kerberos.realm && kerberos.cipher" -T fields -e kerberos.CNameString -e kerberos.realm -e kerberos.cipher -E separator='$'
```

## kerberos - as_rep
from Krb5RoastParser 
```bash
tshark -r <wlan_dump_file> -Y "kerberos.msg_type == 11 && kerberos.CNameString && kerberos.realm && kerberos.cipher" -T fields -e kerberos.CNameString -e kerberos.realm -e kerberos.cipher -E separator='$'
```

## kerberos - tgs_rep
from Krb5RoastParser 
```bash
tshark -r <wlan_dump_file> -Y "kerberos.msg_type == 13 && kerberos.CNameString && kerberos.realm && kerberos.SNameString && kerberos.cipher" -T fields -e kerberos.CNameString -e kerberos.realm -e kerberos.SNameString -e kerberos.cipher -E separator='$'
```


for file in $(find . -type f -name "*.tex"); do out="${file%.tex}.md"; pandoc "$file" -o "$out" ; done
