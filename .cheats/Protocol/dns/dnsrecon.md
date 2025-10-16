# dnsrecon
% dns, dnsrecon, 53
#plateform/linux  #target/remote  #protocol/dns #port/53 #cat/RECON 

## standard enum on domain
```bash
dnsrecon -d <domain_fqdn>
```

## zone transfer
```bash
dnsrecon -d <domain_fqdn> -t axfr
```

## reverse lookup start/end ip
```bash
dnsrecon -r <startip>-<endip> -n <domain_name_server>
```

## reverse lookup network range ip
```bash
dnsrecon -r <ip_with_network_mask> -n <domain_name_server>
```

## domain bruteforce
```bash
dnsrecon -d <domain_fqdn> -D <wordlist> -t brt
```

