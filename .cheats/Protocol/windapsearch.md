# windapsearch

% Active Directory, ldap

## windapsearch - custom 
#cat/ATTACK/CONNECT
```bash
windapsearch --dc-ip  10.129.42.188 -d INLANEFREIGHT.LOCAL -u james.cross@INLANEFREIGHT.LOCAL -p 'Academy_Student!' --custom '(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=128))'
```

