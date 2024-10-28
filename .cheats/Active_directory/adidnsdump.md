# adidnsdump

% dns,windows, Active directory
#plateform/linux #target/remote #cat/AD/RECON

## Dump DNS - all records from the domain controller
cat records.csv
```bash
adidnsdump -u '<domain_netbios>\<user>' -p <password> --zone <domain_fqdn> ldap://<dc_ip>:<port|389> -r
```

## Dump DNS - all records from the domain controller (pth)
cat records.csv
```bash
adidnsdump -u '<domain_netbios>\<user>' -p aad3b435b51404eeaad3b435b51404ee:<nt_hash> --zone <domain_fqdn> ldap://<dc_ip>:<port|389> -r
```

## Dump DNS - all records from the domain controller (proxychains)
cat records.csv
```bash
adidnsdump -u '<domain_netbios>\<user>' -p <password> --zone <domain_fqdn> --dns-tcp ldap://<dc_ip>:<port|389> -r
```

## Dump DNS - list all zones
```bash
adidnsdump -u '<domain_netbios>\<user>' -p <password> --print-zones ldap://<dc_ip>:<port|389> -r
```

## Search the ForestDnsZones instead of DomainDnsZones
```bash
adidnsdump -u '<domain_netbios>\<user>' -p <password> --forest ldap://<dc_ip>:<port|389> -r
```