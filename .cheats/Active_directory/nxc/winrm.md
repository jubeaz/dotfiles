# nxc

% nxc, netexec, windows, Active directory


## winrm- auth
#plateform/linux #target/remote #port/5985 #port/5986 #protocol/winrm #cat/ATTACK/CONNECT  

```bash
nxc winrm <ip> -u <user> -p <password>
```


## winrm - read laps
#plateform/linux #target/remote #port/5985 #port/5986 #protocol/winrm #cat/ATTACK/CONNECT  

```bash
nxc winrm <ip> -u <user> -p <password> --laps <name|Administrator>
```