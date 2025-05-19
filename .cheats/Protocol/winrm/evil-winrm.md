# evil-winrm
% windows, remote, winrm, evilwinrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986 #cat/ATTACK/CONNECT 

## _desc
```
```

## _repo
```
```

## _doc
```
```

## _install
```
gem install evil-winrm
```

## local account with creds
```bash
evil-winrm -i <ip> -u <user> -p '<password>'
```


## local account with creds (over TLS)
```bash
evil-winrm -i <ip> -u <user> -p '<password>' --ssl -Port 5986
```

## domain account with creds
```bash
evil-winrm -i <ip> -u '<domain_netbios>\<user>' -p '<password>'
```

## local account pth
```bash
evil-winrm -i <ip> -u <user> -H <nt_hash>
```

## domain account pth
```bash
evil-winrm -i <ip> -u '<domain_netbios>\<user>' -H <nt_hash>
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