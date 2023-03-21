# ldapsearch

% ldap, Active Directory, 

## ldapsearch - get AD time
#plateform/linux #target/remote #port/445 #protocol/ #cat/RECON

```bash
ldapsearch -LLL -x -H ldap://<IP> -b '' -s base '(objectclass=*)' | grep currentTime
```

