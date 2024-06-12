# dacledit.py (imp)

% impacket-other, windows, ACL

## desc
```
editor for a Active Directory principal's DACL
in master branch 
```

## read - target acl
#plateform/linux  #target/remote  #protocol/ldap 
```bash
dacledit.py -target <target> -dc-ip <dc_fqdn>  <domain_fqdn>/<user>:<password> 
```

## read - target acl from source
#plateform/linux  #target/remote  #protocol/ldap 
```bash
dacledit.py -principal <source> -target <target> -dc-ip <dc_fqdn> <domain_fqdn>/<user>:<password>
```

## backup - target acl
#plateform/linux  #target/remote  #protocol/ldap 
```bash
dacledit.py -target <target> -dc-ip <dc_fqdn>  <domain_fqdn>/<user>:<password> -action backup -file <path>
```

## restore - target acl
#plateform/linux  #target/remote  #protocol/ldap 
```bash
dacledit.py -target <target> -dc-ip <dc_fqdn>  <domain_fqdn>/<user>:<password> -action restore -file <path>
```

## write - target acl
#plateform/linux  #target/remote  #protocol/ldap 
```bash
dacledit.py -target <target> -dc-ip <dc_fqdn>  <domain_fqdn>/<user>:<password> -action restore -file <path>
```

## write - acl (full control)
#plateform/linux  #target/remote  #protocol/ldap 
```bash
dacledit.py -principal <source> -target <target> -dc-ip <dc_fqdn> <domain_fqdn>/<user>:<password> -action write [-rights FullControl] [-inheritance]
```
