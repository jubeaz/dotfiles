# xfreerdp

% rdp, windows
#plateform/linux  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

##  RDP connect with password
```
xfreerdp /cert:ignore /u:<user> /p:<password> /d:<domain> /v:<ip> /h:1024 /w:1640 /drive:share,<share> +drives
```


## RDP connect with  hash
```
xfreerdp /cert:ignore /u:<user> /pth:<nt_hash> /d:<domain> /v:<ip> /h:1024 /w:1640 /drive:share,<share> +drives
```
