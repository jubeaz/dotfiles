
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

