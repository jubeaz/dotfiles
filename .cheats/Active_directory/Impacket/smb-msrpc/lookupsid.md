# lookupsid.py (imp)

% impacket-smb-msrpc, windows, smb, msrpc

#plateform/linux #target/remote #port/445 #cat/ATTACK/CONNECT  

## desc
```
SID brute forcer 
```

## domain SID (creds)
```bash
lookupsid.py -debug -domain-sids '<domain_fqdn>/<user>:<password>'@<target_fqdn> <maxRID|6000>
```


## domain SID (pth)
```bash
lookupsid.py -debug -domain-sids -hashes :<nt_hash> '<domain_fqdn>/<user>'@<target_fqdn> <maxRID|6000>
```

