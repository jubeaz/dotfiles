# rpcclient

% rpcclient, rpc, windows

## connect with domain account
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' 
```
## connect with local account
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<user>%<pssword>' 
```
## help
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "help;quit"
```

## enumerate domain users
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "enumdomusers;quit"
```


## srvinfo
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "srvinfo;quit"
```

## get user sid
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "lookupnames <name>; wmic useraccount get name,sid; quit"
```

## domain info
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "querydominfo;quit"
```

## password policy
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "getdompwinfo;quit"
```

## enumerate net shares
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "netshareenum;netshareenumall;quit"
```


## get net share info
#plateform/linux #target/remote #cat/RECON 
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "netsharegetinfo <share>;quit"
```

## Trying all username as password from list of users
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY  
```
for u in `cat <file>`; do echo -n "user: $u " && rpcclient -U "$u%$u" -c "getusername;quit" <ip>; done
```

## enum commands list
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "enum;quit"
```

## enumdomains (Current domain)
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "enumdomains;quit"
```

## enumerate domain groups
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "enumdomgroups;quit"
```

## query group information
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "querygroup <RID>;quit"
```

## query privileges
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "enumprivs;quit"
```

## query group membership
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "querygroupmem <RID>;quit"
```


## query user groups 
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "queryusersgroups <RID>;quit"
```

## query user/ computer information (name)
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "queryuser <user>;quit"
```

## query user/ computer information (RID)
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "queryuser <RID>;quit"
```

## enumerate local users (RID brute force)
#plateform/linux #target/remote #cat/RECON
```
for i in $(seq 500 1100);do rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "queryuser $(printf '%x\n' $i)" | grep "User Name\|user_rid\|group_rid" && echo "";done
```

## Get User Domain Password Information
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "getusrdompwinfo <RID>;quit"
```

## Local Users LSA Enum SID
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "lsaenumsid;quit"
```

## ocal Users Lookup SID
#plateform/linux #target/remote #cat/RECON
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "lookupsids <SID>;quit"
```

## reset AD user password
#plateform/linux #target/remote #cat/EXPLOIT
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "setuserinfo2 <user> 23 '<NEWPASSWORD>';quit"
```

## create domain user
#plateform/linux #target/remote #cat/EXPLOIT
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "createdomuser <user>;  setuserinfo2 <user> 24 '<password>';quit"
```

## delete domain user
#plateform/linux #target/remote #cat/EXPLOIT
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "deletedomuser <user>;quit"
```

## enumerate alias groups
#plateform/linux #target/remote #cat/EXPLOIT
```
rpcclient <ip> -U '<domain_netbios>\<user>%<pssword>' -c "enumalsgroups builtin;quit"
```