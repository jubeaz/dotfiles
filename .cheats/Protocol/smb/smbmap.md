# smbmap
% smb, samba

## smbmap
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT 

```
smbmap -H <ip> -u "<user>%<password>"
```

## smbmap - null access
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT 

```
smbmap -u "" -p "" -P 445 -H <ip>
```

## smbmap - guest access
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT 
```
smbmap -u "guest" -p "" -P 445 -H <ip>
```

## smbmap - list root of all shares
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT 
```
smbmap -H <ip> -u <user> -p <password> -d <domain_fqdn> -r
```

## smbmap - recursively list dirs, and files
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT 
```
smbmap -H <ip> -u <user> -p <password> -d <domain_fqdn> -R <path> --depth 1
```

