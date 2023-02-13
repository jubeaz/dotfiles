# dnstool

% dnstool, windows, Active directory, dns, ldap

## dnstool - Add  Active Directory Integrated DNS records via LDAP
#plateform/linux #target/remote #port/445 #protocol/ldap #cat/ATTACK 
Example : python3 /usr/share/krbrelayx/dnstool.py -u intelligence\\foo -p password123 --action add --record pwn --data 10.10.14.19 --type A 10.10.10.248

https://github.com/dirkjanm/krbrelayx

```bash
dnstool.py -u <user> -p <password> --action add --record <name> --data <ip> --type A <server>
```

# ldap

#plateform/linux #taret/remote #protocol/ldap #port/639 #port/389

## ldapsearch-ad - info
#cat/ATTACK/CONNECT
```bash
ldapsearch-ad.py -l <ip> -d <domain> -u <login> -p <password> -t info
```

## windapsearch - custom 
#cat/ATTACK/CONNECT
```bash
windapsearch --dc-ip  10.129.42.188 -d INLANEFREIGHT.LOCAL -u james.cross@INLANEFREIGHT.LOCAL -p 'Academy_Student!' --custom '(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=128))'
```

