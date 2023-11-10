# windows

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


# powershell

% windows, remote, winrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986

## Enable winrm (powershell)
#plateform/windows #target/local #cat/UTILS 
```powershell
Enable-PSRemoting -Force  
Set-Item wsman:\localhost\client\trustedhosts *  
```


## Test target is configure to use winrm (powershell)
#plateform/windows #target/local #cat/RECON 
```powershell
Test-WSMan -computername <computername>
```

## Execute a command on the target over winrm (powershell)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
```powershell
Invoke-Command -computername <computername> -ScriptBlock {<cmd>} -credential <domain>\<username>
```

## Execute a script on the target over winrm (powershell)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
Invoke-Command -ComputerName <computername> -FilePath <path_to_script> -credential <domain>\<username>
```

## Get a powershell session with winrm (powershell)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
Enter-PSSession -ComputerName <computername> -Credential <domain>\<username>
```

