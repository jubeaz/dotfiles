# manspider
% smb, samba
#plateform/linux #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/manspider  #port/445 #protocol/smb

## scan 
```bash
manspider.py --threads 50 <target> -d <domain_fqdn> -u <user> -p <password> --content "<content_1>" "content_2"
```
