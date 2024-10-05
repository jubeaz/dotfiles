# DNS

% dns, host, 53

## host find name server
#plateform/linux  #target/remote  #cat/RECON  
```
host -t ns <domain_fqdn>
```

## host find mail server
#plateform/linux  #target/remote  #cat/RECON
```
host -t mx <domain_fqdn>
```

% dns, dig, 53

## dig dns lookup
#plateform/linux  #target/remote  #cat/RECON
```
dig <domain_name> @1.1.1.1
```

## dig any information
#plateform/linux  #target/remote  #cat/RECON
```
dig ANY <domain_name> @<dns_ip>
```

## dig reverse lookup
#plateform/linux  #target/remote  #cat/RECON
```
dig -x <ip> @<dns_ip>
```

## dig zone transfer
#plateform/linux  #target/remote  #cat/RECON
```
dig axfr <domain_name> @<name_server>
```

## dig, find external, public IP address
#plateform/linux  #target/remote  #cat/RECON
```
dig +short <domain_name> @resolver1.opendns.com
```

## dig, find domains file ip address value
#plateform/linux  #target/remote  #cat/RECON
```
dig -f <domains.txt> +noall +answer
```

## dig, find domains file MX ip record
#plateform/linux  #target/remote  #cat/RECON
```
dig -f <domains.txt> MX +noall +answer
```

% dns, dnsrecon, 53

## dnsrecon standard enum on domain
#plateform/linux  #target/remote  #cat/RECON
```
dnsrecon -d <domain_fqdn>
```

## dnsrecon zone transfer
#plateform/linux  #target/remote  #cat/RECON
```
dnsrecon -d <domain_fqdn> -t axfr
```

## dnsrecon reverse lookup start/end ip
#plateform/linux  #target/remote  #cat/RECON
```
dnsrecon -r <startip>-<endip> -n <domain_name_server>
```

## dnsrecon reverse lookup network range ip
#plateform/linux  #target/remote  #cat/RECON
```
dnsrecon -r <ip_with_network_mask> -n <domain_name_server>
```

## dnsrecon domain bruteforce
#plateform/linux  #target/remote  #cat/RECON
```
dnsrecon -d <domain_fqdn> -D <wordlist> -t brt
```

% dns, dnsenum, 53
#plateform/linux  #target/remote  #cat/RECON
```
dnsenum <domain_fqdn>
```

% dns, msf, 53

## dns metasploit enumeration
#plateform/linux  #target/remote  #cat/RECON
```
msfconsole -x "use auxiliary/gather/enum_dns; set domain <domain_fqdn>; set ns <dns_server>; exploit"
```

% dns, sublist3r , 53

## dns sublist3r - subdomain enumeration
#plateform/linux  #target/remote  #cat/RECON
```
sublist3r -d <domain_fqdn> -v
```

## dns sublist3r - subdomain enumeration with bruteforce module enabled
#plateform/linux  #target/remote  #cat/RECON
```
sublist3r -b -d <domain_fqdn>
```
