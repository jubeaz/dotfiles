# smbclient.py (imp)

% impacket-smb-msrpc, windows, smb, msrpc

#plateform/linux #target/remote #port/445 #cat/ATTACK/CONNECT  

## desc
```
A generic SMB client 
```

## connect (creds)
```bash
smbclient.py -debug <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## connect (pth)
```bash
smbclient.py -debug -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn>
```

## connect (ptt)
```bash
KRB5CCNAME=<ccache> smbclient.py -debug -k -no-pass <user>@<target_fqdn>
```