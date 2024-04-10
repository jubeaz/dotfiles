# getTGT (imp)

% impacket-kerberos, windows, kerberos, 88


## GetTGT - request a TGT (pth)
#plateform/linux #target/remote  #cat/UTILS
```
getTGT.py -dc-ip <dc_ip> -hashes <lm_hash>:<nt_hash> <domain>/<user>
```

## GetTGT - request a TGT (creds)
#plateform/linux #target/remote  #cat/UTILS
```
getTGT.py -dc-ip <dc_ip>  '<domain>'/'<user>':'<password>'
```