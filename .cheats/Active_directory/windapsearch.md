# windapsearch

% Active Directory, ldap

## windapsearch - custom 
#plateform/linux #target/remote  #cat/RECON 

windapsearch --dc-ip  10.129.42.188 -d INLANEFREIGHT.LOCAL -u james.cross@INLANEFREIGHT.LOCAL -p 'Academy_Student!' --custom '(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=128))'
```bash
windapsearch --dc-ip  <ip> -d <domain> -u <user> -p <password> --custom <request>
```
