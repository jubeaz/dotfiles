# smb
% smb, samba

## smbacl - get file ACL
```bash
smbcacls //<ip>/<share> /<path> -U <user>%'<password>'
```

## nbtscan - scan network looking for hosts
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
```
nbtscan -r <ip_range>
```

## interactive (cred)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```bash
smbclient //<ip>/<share> -U '<user>%<password>' -W <domain_fqdn>
```

## recursive download (cred)
```bash
smbclient //<ip>/<share> -U <user>%'<password>' -W <domain_fqdn> -c 'prompt OFF; recurse ON;  mget *'
```

## recursive list (cred)
```bash
smbclient //<ip>/<share> -U <user>%'<password>' -W <domain_fqdn> -c 'prompt OFF; recurse ON;  ls'
```

## smbclient (pth)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
smbclient //<ip>/<share> -U '<user>' --pw-nt-hash '<nt_hash>' -W <domain_fqdn>
```

## smbclient sessions without password
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
smbclient //<ip>/<share> -U "<user>%"
```

## smbclient null session
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
smbclient //<ip>/<share> -U "%"
```


## smb mount folder
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
sudo mount -t cifs //<ip>/<share> <local> -o username=<user|guest>,password=<password|''> -o domain=<domain_fqdn>
```

## smb mount ro folder
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
sudo mount -t cifs //<ip>/<share> <local> -o ro,username=<user|guest>,password=<password|''> -o domain=<domain_fqdn>
```
