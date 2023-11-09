# sharprdp
% rdp, windows
#plateform/windows  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

## rdp from console
```
sharprdp.exe computername=<computer> command="<command>" username=<domain>\<user> password=<password>
```

# rdesktop
% rdp, windows
#plateform/linux  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

## rdesktop - classic
```
rdesktop -g 90% <ip> -u <user> -p <password> -d <domain>
```

## rdesktop - with share
```
rdesktop -g 90% <ip> -u <user> -p <password> -d <domain> -r disk:share=<share>
```

# xfreerdp

% rdp, windows
#plateform/linux  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

## xfreerdp - classic
```
xfreerdp /cert:ignore /u:<user> /p:<password> /d:<domain> /v:<ip> /h:1024 /w:1640 /drive:share,<share> +drives
```

## xfreerdp - with share
```
xfreerdp /cert:ignore /u:<user> /p:<password> /d:<domain> /v:<ip> /h:1024 /w:1640 /drive:share,<share> +drives
```

## xfreerdp - pass the hash
```
xfreerdp /cert:ignore /u:<user> /pth:<hash> /d:<domain> /v:<ip> /h:1024 /w:1640 /drive:share,<share> +drives
```
