# adidnsdump

% dns,windows, Active directory

## Dump all records from the domain controller
#plateform/linux #target/remote #cat/RECON
cat records.csv
```bash
adidnsdump -u '<domain>\<user>' -p <password> --zone <domain> ldap://<dc_ip>:<port|389> -r
```

## Dump all records from the domain controller (proxychains)
#plateform/linux #target/remote #cat/RECON
cat records.csv
```bash
adidnsdump -u '<domain>\<user>' -p <password> --zone <domain> --dns-tcp ldap://<dc_ip>:<port|389> -r
```

## list all zones
#plateform/linux #target/remote #cat/RECON
```bash
adidnsdump -u '<domain>\<user>' -p <password> --print-zones ldap://<dc_ip>:<port|389> -r
```

## Search the ForestDnsZones instead of DomainDnsZones
#plateform/linux #target/remote #cat/RECON
```bash
adidnsdump -u '<domain>\<user>' -p <password> --forest ldap://<dc_ip>:<port|389> -r
```