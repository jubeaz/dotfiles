# bloodyAD

% windows, Active directory
#plateform/linux #target/remote  #cat/ATTACK/DACL-ABUSE


## get - list children of an object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get children --direct --target <DN>
```

## get - list computers (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get children --otype computer
```

## get - list users (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get children --otype useronly
```

## get - tombstone users (pth)
https://cravaterouge.com/articles/ad-bin/
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get search --base "CN=Deleted Objects,DC=<domain>,dc=<domain_tld>" -c 1.2.840.113556.1.4.2064 -c 1.2.840.113556.1.4.2065
```

## get - DNS dump records (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get dnsDump --zone <domain_fqdn>  
```

## get - membership (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get membership <target_sAMAccountName>
```

## get - object with dacl (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get object --resolve-sd <target_sAMAccountName> | grep 'GP-Link\|GENERIC_ALL'
```

## get - object attribute (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get object <target_sAMAccountName> --attr <attribute>
```

## get - search (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get search --filter '<ldap_filter|(objectClass=*)>' --attr <comma_sep_attr_list|'*'> --resolve-sd  <search_base|DC=domain,DC=tld>
```

## get - writable (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get writable
```
