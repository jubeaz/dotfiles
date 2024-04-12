# changepasswd

% impacket-other, windows, kerberos, 88, misc

## change user password (ldap reset)
#plateform/linux  #target/remote  #protocol/ldap 
```bash
export KRB5CCNAME=<ccache> ; changepasswd.py  -k -no-pass -protocol ldap -reset -newpass '<password|Zaebuj12345+->' -dc-ip <domain_fqdn> <domain_fqdn>/<target_account>@<dc-ip>
```