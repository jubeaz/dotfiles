# powershell

#plateform/windows #target/local #cat/UTIL #tag/powershell 


## env - add binary path
```powershell
$env:PATH += ";<path>"
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
