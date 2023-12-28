
# pwsh
% windows, systeminfo

#plateform/windows #target/local #cat/RECON/SYSTEM #tag/powershell 

## system - get info
```
Get-ComputerInfo
```

## system - get patches and updates
```
Get-HotFix | ft -AutoSize
```

## system - get computer name
```powershell
$env:computername
```

## system - get system time
```
Get-Date
```

## system - show mounted disks
```powershell
Get-PSDrive
```

# system - get current DC
```powershell
Get-ADDomainController
```