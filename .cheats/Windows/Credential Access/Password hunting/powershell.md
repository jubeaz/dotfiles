# powershell

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 

## powershell -  Search file content
```
Get-ChildItem C:\ -Recurse -ErrorAction Ignore |  select-string '<pattern>' -List | select Path
```


## powershell -  Search files having extension
```
Get-ChildItem -Recurse -Filter '*.js' -ErrorAction 'SilentlyContinue' 
```

## powershell -  Search files having Alternate Data Streams
```
gci -recurse | % { gi $_.FullName -stream * } | where stream -ne ':$Data'
```

## powershell -  Read display alternate datastream
```
 Get-Content <path> -Stream <stream>
```


## powershell -  search creds in eventlogs
```
 Get-WinEvent -LogName security | where { $_.ID -eq 4688 -and $_.Properties[8].Value -like '*/user*'} | Select-Object @{name='CommandLine';expression={ $_.Properties[8].Value }}
```