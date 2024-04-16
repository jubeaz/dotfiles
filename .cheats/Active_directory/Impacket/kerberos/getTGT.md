# getTGT.py (imp)

% impacket-kerberos, windows, kerberos, 88
#plateform/linux #target/remote  #cat/UTILS

## desc
```
Given a password, hash or aesKey, this script will request a TGT and save it as ccache.
```

## request a TGT (pth)
```bash
getTGT.py -dc-ip <dc_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>
```

## request a TGT (creds)
```bash
getTGT.py -dc-ip <dc_fqdn>  <domain_fqdn>/<user>:'<password>'
```