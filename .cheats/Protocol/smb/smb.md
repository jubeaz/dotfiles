# smb
% smb, samba

## nbtscan - scan network looking for hosts
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
```
nbtscan -r <ip_range>
```

## interactive (cred)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```bash
smbclient \\\\<ip>\\<share> -U '<user>%<password>' -W <domain>
```

## recursive download (cred)
```bash
smbclient \\\\<ip>\\<share> -U '<user>%<password>' -W <domain>-c 'prompt OFF; recurse ON;  mget *'
```

## recursive list (cred)
```bash
smbclient \\\\<ip>\\<share> -U '<user>%<password>' -W <domain>-c 'prompt OFF; recurse ON;  ls'
```

## smbclient (pth)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
smbclient \\\\<ip>\\<share> -U '<user>' --pw-nt-hash '<nt_hash>' -W <domain>
```

## smbclient sessions without password
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
smbclient \\\\<ip>\\<share> -U "<user>%"
```

## smbclient null session
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
smbclient \\\\<ip>\\<share> -U "%"
```

## smb - find not signed  smb
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
```
nmap -Pn -sS -T4 --open --script smb-security-mode -p445 <ip>
```

## smb mount folder
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
sudo mount -t cifs //<ip>/<share> <local> -o username=<user|guest>,password=<password|''> -o domain=<domain>
```

## smb mount ro folder
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
sudo mount -t cifs //<ip>/<share> <local> -o ro,username=<user|guest>,password=<password|''> -o domain=<domain>
```
