# findDelegation.py (imp)

% impacket-kerberos, windows, kerberos, 88, delegation

#plateform/linux #target/remote #port/389 #port/639 #protocol/ldap #cat/RECON 

## desc
```
Queries target domain for delegation relationships
```

# find kerberos delegations (cred)
```bash
findDelegation.py -debug -dc-ip <dc_fqdn> <domain_fqdn>/<user>:'<password>'
```

## find kerberos delegations (pth)
```bash
findDelegation.py -debug -dc-ip <dc_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>
```

## find kerberos delegations (ptt)
```bash
KRB5CCNAME=<ccache> findDelegation.py -debug -dc-ip <dc_fqdn> -no-pass -k <domain_fqdn>/<user>
```
