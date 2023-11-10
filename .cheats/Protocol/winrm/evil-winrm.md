# evil-winrm
% windows, remote, winrm, evilwinrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986 #cat/ATTACK/CONNECT 

## local account with creds
```
evil-winrm -i <ip> -u <user> -p <password>
```
## domain account with creds
```
evil-winrm -i <ip> -u <user>@<domain> -p <password>
```

## local account pth
```
evil-winrm -i <ip>/<domain> -u <user> -H <hash>
```

## domain account pth
```
evil-winrm -i <ip> -u <user>@<domain> -H <hash>
```