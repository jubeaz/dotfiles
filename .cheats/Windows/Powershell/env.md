# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 


## env - add binary path
```powershell
$env:PATH += ";<windows_writable_path>"
```

## env - list 
```powershell
Get-ChildItem Env:
```

## env - create 
```powershell
$Env:<var_name> = "<var_value>"
```

## env - delete
```powershell
Remove-Item Env:\<var_name>
```
