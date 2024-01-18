# windows
## Enable winrm 1/4 (cmd)
#plateform/windows #target/local #cat/UTILS 
```cmd
winrm quickconfig
```

## Enable winrm 2/4 (cmd)
```cmd
winrm set winrm/config/service @{AllowUnencrypted="true"}
```

## Enable winrm 3/4 (cmd)
```cmd
winrm set winrm/config/service/auth @{Basic="true"}
```

## Enable winrm 4/4 (cmd)
```cmd
winrm set winrm/config/client @{TrustedHosts="*"}
```

## Enable winrm (wmic)
#plateform/windows #target/local #cat/UTILS 
```batchfile
wmic /node:<REMOTE_HOST> process call create "powershell enable-psremoting -force"
```

## Enable winrm remotelly from psexec
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```batchfile
.\PsExec.exe \\<computername> -u <domain>\<username> -p <password> -h -d powershell.exe "enable-psremoting -force"  
```
