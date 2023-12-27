
# powershell
% windows, users, groups

#plateform/windows #target/local #cat/RECON/USER #tag/powershell 

## user - logged users 
```powershell
Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty UserName
```

## user - logged users remotly
#target/remote
```powershell
Invoke-Command -ComputerName "<computer-name>" -ScriptBlock { query user }
```

## user - list local users
```powershell
Get-LocalUser | ft Name,Enabled,LastLogon
```

