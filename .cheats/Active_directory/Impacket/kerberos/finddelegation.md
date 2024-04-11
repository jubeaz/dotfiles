# findDelegation

% impacket-kerberos, windows, kerberos, 88, delegation
#plateform/linux #target/remote #port/389 #port/639 #protocol/ldap #cat/RECON 

# find kerberos delegations (cred)
```
findDelegation.py -dc-ip <dc_ip> '<domain_fqdn>'/'<user>':'<password>'
```

## find kerberos delegations (pth)
```
findDelegation.py -dc-ip <dc_ip> -hashes :<nt_hash> '<domain_fqdn>/<user>'
```

