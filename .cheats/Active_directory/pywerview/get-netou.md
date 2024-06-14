# pywerview

% pywerview, ACL


## get-netou - list ou with gplink
```bash
./pywerview.py get-netou -l DEBUG -t <dc_ip> -w <domain_fqdn> -u <user> -p <password> --resolve-sids --resolve-guids -full-data --json | jq '.results | map(select(.gplink | contains("policies")))'
```
