
# pwsh
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
```powershell
New-LocalUser -FullName '<fname|jubeaz>' -Name <name|jubeaz> -Password (ConvertTo-SecureString -String '<password|Zaebuj12345+->' -AsPlainText -Force)  
```

## user - reset password (domain)
```powershell
Set-ADAccountPassword -Identity <target_user> -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "<password|Zaebuj12345+->" -Force)
```


## user - add AD user
```powershell
New-ADUser -Name '<name|jubeaz>' -AccountPassword (ConvertTo-SecureString -String '<password|Zaebuj12345+->' -AsPlainText -Force) -Enabled $true -Server <target_dc_fqdn>
```