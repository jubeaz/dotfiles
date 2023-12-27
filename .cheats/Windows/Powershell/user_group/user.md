
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

## user - add local user
```
New-LocalUser -FullName '<fname|jubeaz>' -Name <name|jubeaz> -Password <password|Jubeaz12345!> ‑Description 'Pwnage account'  
```



## user - change user password (reset domain)
```
Set-ADAccountPassword -Identity <target_user> -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "<password|Jubeaz12345!>" -Force)
```
