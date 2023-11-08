# windows
% windows, systeminfo

#plateform/windows #target/local #cat/RECON/SYSTEM

## get info system
```
systeminfo
```

## get patches and updates
```
wmic qfe list
```

## get patches
```
wmic qfe get Caption,Description,HotFixID,InstalledOn
```

## get password policy
```
net accounts
```


## get hostname
```
hostname
```

## get environment variables
```
set
```

## show mounted disks
```
wmic logicaldisk get caption,description,providername
```

## show recycle bin
```
dir C:\$Recycle.Bin /s /b
```

## get architecture
```
wmic os get osarchitecture || echo %PROCESSOR_ARCHITECTURE%
```

## get system time
```
net time
```

## get system time (remote)
```
net time \\<hostname>
```

# powershell
% windows, systeminfo

#plateform/windows #target/local #cat/RECON/SYSTEM #tag/powershell 

## get info system
```
Get-ComputerInfo
```

## get patches and updates
```
Get-HotFix | ft -AutoSize
```

## get user password policy
```
Get-ADUserResultantPasswordPolicy -Identity <user>
```

## get default password policy
```
Get-ADDefaultDomainPasswordPolicy
```

## get environment variables
```
Get-ChildItem Env: | ft Key,Value
```
## get computer name
```powershell
$env:computername
```

## get system time
```
Get-Date
```