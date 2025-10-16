# msf
% dns, msf, 53
#plateform/linux  #target/remote  #protocol/dns #port/53 #cat/RECON 

## dns enumeration
```bash
msfconsole -x "use auxiliary/gather/enum_dns; set domain <domain_fqdn>; set ns <dns_server>; exploit"
```
