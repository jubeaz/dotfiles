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

## set - change user password (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set password <target_user> '<password|Jubeaz12345!>' 
```

## set - add/replace/delete target attribute  (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```

## set - object onwer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```



## add - new computer (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - DCSync right (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - DNS record (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - full control (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - groupMember (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - rbcd (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - shadowCredentials (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - uac (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```
## add - user (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> add  
```


## get - list children of an object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> get  
```
## get - DNS records (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> get  
```
## get - membership (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> get  
```
## get - object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> get  
```
## get - search (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> get  
```
## get - writable (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> get  
```

## remove - DCSync (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - DNS record (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - full control (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - groupMember (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - object (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - rbcd (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - shadowCredentials (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```
## remove - uac (pth)
https://github.com/CravateRouge/bloodyAD
```bash
bloodyad --host <dc_ip> -d <domain> -u <user> -p :<nt_hash> -v <level|INFO> set  
```

