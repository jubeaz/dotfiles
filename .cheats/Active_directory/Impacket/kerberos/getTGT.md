# getTGT (imp)

% impacket-kerberos, windows, kerberos, 88


## GetTGT - request a TGT (pth)
#plateform/linux #target/remote  #cat/UTILS
```
getTGT.py -dc-ip <dc_ip> -hashes <lm_hash>:<nt_hash> <domain_fqdn>/<user>
```

## GetTGT - request a TGT (creds)
#plateform/linux #target/remote  #cat/UTILS
```
getTGT.py -dc-ip <dc_ip>  '<domain_fqdn>'/'<user>':'<password>'
```