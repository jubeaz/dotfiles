# dig
% dns, 53, dig
#plateform/linux  #target/remote  #protocol/dns #port/53 #cat/RECON 

## dns lookup
```bash
dig <domain_name> @<dns_ip>
```

## any information
```bash
dig ANY <domain_name> @<dns_ip>
```

## reverse lookup
```bash
dig -x <ip> @<dns_ip>
```

## zone transfer
```bash
dig axfr <domain_name> @<name_server>
```

## find external, public IP address
```bash
dig +short <domain_name> @resolver1.opendns.com
```

## find domains file ip address value
```bash
dig -f <domains.txt> +noall +answer
```

## find domains file MX ip record
```bash
dig -f <domains.txt> MX +noall +answer
```
