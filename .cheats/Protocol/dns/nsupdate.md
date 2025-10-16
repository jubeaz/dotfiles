# nsupdate
% dns, 53, nsupdate, dyndns
#plateform/linux  #target/remote  #protocol/dns #port/53 #cat/ATTACK 

## add dns record (dynamic updates)
```bash
nsupdate -v <<EOF
server <dns_ip>
zone <dns_zone>
update add <name>.<dns_zone>. <ttl|3600> A  <ip>
send
EOF
```


## delete dns record (dynamic updates)
```bash
nsupdate -v <<EOF
server <dns_ip>
zone <dns_zone>
update delete <name>.<dns_zone>. A
send
EOF
```