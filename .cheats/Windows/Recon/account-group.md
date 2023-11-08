# windows
% windows, users, groups

#plateform/windows #target/local #cat/RECON/USER-GROUP

## whoami - All info about me, take a look at the enabled tokens
```
whoami /all
```

## logged users (query)
```
query user
```
## logged users (qwinsta)
```
qwinsta
```

## logged users remotly
#target/remote
```
qwinsta /server:<computer-name>
```

## list local users
WARNING will not list account with a $ use powershell
```
net user
```

## list local groups
```
net localgroup
```

## local group members
```
net localgroup <group_name|Administrators>
```

## list domain groups
```
net group /domain
```

## domain group members
```
net group /domain <domain_group_name>
```

# powershell
% windows, users, groups

#plateform/windows #target/local #cat/RECON/USER-GROUP #tag/powershell 

## logged users 
```powershell
Get-WmiObject -Class Win32_ComputerSystem | Select-Object -ExpandProperty UserName
```

## logged users remotly
#target/remote
```powershell
Invoke-Command -ComputerName "<computer-name>" -ScriptBlock { query user }
```

## list local users
```powershell
Get-LocalUser | ft Name,Enabled,LastLogon
```

## list local groups
```powershell
Get-LocalGroup | ft Name
```

## local group members
```powershell
Get-LocalGroupMember <group_name|Administrators> | ft Name, PrincipalSource
```