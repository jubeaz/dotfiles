# windows
## Enable winrm 1/3 (cmd)
#plateform/windows #target/local #cat/UTILS 
```cmd
winrm quickconfig
```

## Enable winrm 2/3 (cmd)
```cmd
winrm set winrm/config/service @{AllowUnencrypted="true"}
```

## Enable winrm 3/3 (cmd)
```cmd
winrm set winrm/config/service/auth @{Basic="true"}
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

## Execute a command on the target over winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
Invoke-Command -computername <computername> -ScriptBlock {<cmd>} -Credential $creds
```

## Execute a script on the target over winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
Invoke-Command -ComputerName <computername> -FilePath <path_to_script> -Credential $creds
```

## Get a powershell session with winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
$sess = New-PSSession -ComputerName <target_name> -Credential $creds -SessionOption (New-PSSessionOption -ProxyAccessType NoProxyServer)
Enter-PSSession $sess
```