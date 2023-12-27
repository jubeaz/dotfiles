# powershell

#plateform/windows #target/local #cat/UTILS #tag/powershell 

## execution policy - get current user
```powershell
Get-ExecutionPolicy -List
```

## execution policy - get all
```powershell
Get-ExecutionPolicy -List
```

## execution policy - set Unrestricted (CurrentUser)
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
```