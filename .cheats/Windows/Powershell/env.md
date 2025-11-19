# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 

## env - add path (persistant)
```
$p="<windows_writable_path|c:\windows\temp";[Environment]::SetEnvironmentVariable("PATH",$env:Path + ";" + $p,"User");$env:PATH = [Environment]::GetEnvironmentVariable("PATH","User")
```

## env - add path (session)
```powershell
$env:PATH += ";<windows_writable_pathh|c:\windows\temp>"
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
