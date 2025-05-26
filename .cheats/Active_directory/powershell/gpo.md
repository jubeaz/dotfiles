# pwsh
#plateform/windows #target/local #cat/UTILS #tag/powershell 

## GPO - new
```powershell
 New-GPO -Name <gpo_name|jubeaz> -Comment "Jubeaz"
```

## GPO - link
```powershell
New-GPLink -Name <gpo_name|jubeaz> -Target "<object_dn>" -Enforced Yes -LinkEnabled Yes
```
