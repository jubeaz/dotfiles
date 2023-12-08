# evil-winrm
% windows, remote, winrm, evilwinrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986 #cat/ATTACK/CONNECT 

## local account with creds
```bash
evil-winrm -i <ip> -u <user> -p <password>
```
## domain account with creds
```bash
evil-winrm -i <ip> -u <user>@<domain> -p <password>
```

## local account pth
```bash
evil-winrm -i <ip> -u <user> -H <hash>
```

## domain account pth
```bash
evil-winrm -i <ip> -u <user>@<domain> -H <hash>
```

## pass the ticket
add realm /etc/krb5.conf
[libdefaults]
        rdns=false
[realms]
CONTOSO.COM = {
             kdc = fooserver.contoso.com
 }
```bash
export KRB5CCNAME=<ticket> && evil-winrm -i <target_fqdn>  --realm <domain>
```