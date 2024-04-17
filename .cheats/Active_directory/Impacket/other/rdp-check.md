# rdp_check.py (imp)

% impacket-other, windows

## desc
```
[MS-RDPBCGR] and [MS-CREDSSP] partial implementation just to reach CredSSP auth. This example tests whether an account is valid on the target host.
```


## check (creds)
```bash
rdp_check.py <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## check (pth)
```bash
rdp_check.py -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn>
```