# powershell
% windows, software

#plateform/windows #target/local #cat/RECON/SOFTWARE #tag/powershell 

## software - List installed 
```powershell
$INSTALLED = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*|  Select-Object DisplayName, DisplayVersion, InstallLocation ;$INSTALLED += Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, InstallLocation ; $INSTALLED |?{ $_.DisplayName -ne $null } |sort-object -Property DisplayName -Unique | ft -AutoSize
```

## software - List installed (wmic)
```powershell
Get-WmiObject -Class Win32_Product | select Name, Version
```
