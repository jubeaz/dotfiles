# pwsh
% windows, remote, winrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986

## remoting - test winrm 
#plateform/windows #target/local #cat/RECON
```powershell
Test-WSMan
```

## remoting - Get winrm config
#plateform/windows #target/local #cat/RECON
```powershell
winrm get winrm/config
get-childitem -Recurse -Path WSMan:
```

## remoting - Enable winrm (powershell)
#plateform/windows #target/local #cat/UTILS 
```powershell
Enable-PSRemoting -Force  
Set-Item wsman:\localhost\client\trustedhosts *  
```

## remoting - Test target is configure to use winrm (powershell)
#plateform/windows #target/local #cat/RECON 
```powershell
Test-WSMan -computername <target_name>
```

## remoting - Test target is configure to use winrm (powershell)
```powershell
Get-WSManInstance -ResourceURI wmicimv2/win32_service -SelectorSet @{name="winrm"} -ComputerName "<target_name>"
```

## remoting - command exec from pssession (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
https://learn.microsoft.com/en-us/powershell/module/microsoft.wsman.management/get-wsmaninstance?view=powershell-7.4#-authentication
None, Default, Digest, Negotiate, Basic, Kerberos, ClientCertificate, Credssp
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;$creds=New-Object System.Management.Automation.PSCredential("<domain_netbios>\<user>", $password);Invoke-Command -computername <target_name> -ScriptBlock {<cmd|hostname>} -Credential $creds -Authentication 'Credssp'
```

## remoting - Oneliner command exec from pssession (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
```powershell
Invoke-Command -computername <target_name> -ScriptBlock {<cmd|hostname>} -Credential (New-Object System.Management.Automation.PSCredential("domain_netbios>\<user>", (ConvertTo-SecureString '<password>' -Asplaintext -force))) -Authentication 'Credssp'
```


## remoting - script exec from psesion (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain_netbios>\<user>", $password);
Invoke-Command -ComputerName <target_name> -FilePath <path_to_script> -Credential $creds -Authentication 'Default'
```

## remoting - nested command exec from pssession (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT   
```powershell
$cred = $New-Object System.Management.Automation.PSCredential("domain_netbios>\<user>", (ConvertTo-SecureString '<password>' -Asplaintext -force)); Invoke-Command -ComputerName <target_1> -Credential $cred -ScriptBlock {Invoke-Command -ComputerName <target_2> -Credential $Using:cred -ScriptBlock {<cmd|hostname>}}
```


## remoting - Get a powershell session with CREDSSP (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$password=ConvertTo-SecureString '<password>' -Asplaintext -force;
$creds=New-Object System.Management.Automation.PSCredential("domain_netbios>\<user>", $password);
$sess = New-PSSession -ComputerName <target_name> -Credential $creds -Authentication 'Credssp' -SessionOption (New-PSSessionOption -ProxyAccessType NoProxyServer) 
Enter-PSSession $sess
```

## remoting - Register PSSessionConfiguration 1/2 (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
Enter-PSSession -ComputerName <target>
```

## remoting - Register PSSessionConfiguration 2/2 (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
Register-PSSessionConfiguration -Name <config_name>  -RunAsCredential "domain_netbios>\<user>"; Restart-Service WinRM
```

## remoting - Register PSSessionConfiguration 3/3 (double-hop)
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
Enter-PSSession -ComputerName <target_name> -Credential "domain_netbios>\<user>" -Authentication 'Credssp' -ConfigurationName <config_name>
```