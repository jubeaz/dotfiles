# changepasswd.py (imp)

% impacket-other, windows, kerberos, 88, misc

## desc
```
Change or reset passwords over different protocols.
```


## rest password (ldap reset)
#plateform/linux  #target/remote  #protocol/ldap 
```bash
export KRB5CCNAME=<ccache> changepasswd.py  -k -no-pass -protocol ldap -reset -newpass '<password|Zaebuj12345+->' -dc-ip <domain_fqdn> <domain_fqdn>/<target_account>@<dc_fqdn>
```