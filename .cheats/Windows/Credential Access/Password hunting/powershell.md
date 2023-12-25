# powershell

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 

## Search Strings Inside Files
```powershell
Get-ChildItem C:\ -Recurse -ErrorAction Ignore |  select-string '<pattern>' -List | select Path
```

## powershell -  Search files having extension
```powershell
Get-ChildItem -Recurse -Filter '*.js' -ErrorAction 'SilentlyContinue' 
```

## powershell -  Search files having Alternate Data Streams
```powershell
gci -recurse | % { gi $_.FullName -stream * } | where stream -ne ':$Data'
```

## powershell -  Read display alternate datastream
```powershell
 Get-Content <path> -Stream <stream>
```


## powershell -  search creds in eventlogs
```powershell
 Get-WinEvent -LogName security | where { $_.ID -eq 4688 -and $_.Properties[8].Value -like '*/user*'} | Select-Object @{name='CommandLine';expression={ $_.Properties[8].Value }}
```

## powershell - Search password in registry
```powershell
REG QUERY HKLM /F "password" /t REG_SZ /S /K
REG QUERY HKCU /F "password" /t REG_SZ /S /K
```

## powershell - credential manager
```powershell
cmdkey /list
```