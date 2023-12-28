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

# pwsh
% windows, remote, winrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986

## Get winrm config
#plateform/windows #target/local #cat/RECON
```powershell
Test-WSMan
```

## Get winrm config
#plateform/windows #target/local #cat/RECON
```powershell
winrm get winrm/config
```

## Enable winrm (powershell)
#plateform/windows #target/local #cat/UTILS 
```powershell
Enable-PSRemoting -Force  
Set-Item wsman:\localhost\client\trustedhosts *  
```

## Test target is configure to use winrm (powershell)
#plateform/windows #target/local #cat/RECON 
```powershell
Test-WSMan -computername <target_name>
```

## Test target is configure to use winrm (powershell)
```powershell
Get-WSManInstance -ResourceURI wmicimv2/win32_service -SelectorSet @{name="winrm"} -ComputerName "<target_name>"
```

## Execute a command on the target over winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
https://learn.microsoft.com/en-us/powershell/module/microsoft.wsman.management/get-wsmaninstance?view=powershell-7.4#-authentication
None, Default, Digest, Negotiate, Basic, Kerberos, ClientCertificate, Credssp
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
Invoke-Command -computername <target_name> -ScriptBlock {<cmd>} -Credential $creds -Authentication 'Credssp'
```

## Oneliner Execute a command on the target over winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
```powershell
Invoke-Command -computername <target_name> -ScriptBlock {<cmd|whoami>} -Credential (New-Object System.Management.Automation.PSCredential("domain>\<username>", (ConvertTo-SecureString '<password>' -Asplaintext -force))) -Authentication 'Credssp'
```

## Execute a script on the target over winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
Invoke-Command -ComputerName <target_name> -FilePath <path_to_script> -Credential $creds -Authentication 'Default'
```

## Get a powershell session with winrm (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
$sess = New-PSSession -ComputerName <target_name> -Credential $creds -Authentication 'Credssp' -SessionOption (New-PSSessionOption -ProxyAccessType NoProxyServer) 
Enter-PSSession $sess
```

## Register PSSession (powershell - double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain>\<username>", $password);
Register-PSSessionConfiguration -Name <session_name>  -RunAsCredential $creds
Enter-PSSession -ComputerName <target_name> -Credential $creds -Authentication 'Credssp' -ConfigurationName <session_name>
```