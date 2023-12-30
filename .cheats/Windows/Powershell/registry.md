# pwsh

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 


## registry - Search password
```powershell
REG QUERY HKLM /F "password" /t REG_SZ /S /K
REG QUERY HKCU /F "password" /t REG_SZ /S /K
```


## registry - list subkeys
```powerhell
Get-ItemProperty -Path "<hive|HKLM>:<path>"  -Recurse
```

## registry - copy key
```powershell
Copy-Item -Path "<hive|HKLM>:<path>" -Destination "<hive|HKCU>:<path>" -Recurse
```

## registry - remove key
```powershell
Remove-Item -Path "<hive|HKLM>:<path>" -Recurse
```

## registry - edit key
```powershell
Set-ItemProperty -Path "<hive|HKLM>:<path>" -Name "<key>" -Value <value>
```

## registry - create key
```powershell
New-ItemProperty -Path "<hive|HKLM>:<path>" -Name "<key>" -PropertyType <type|String> -Value "<value>"
```