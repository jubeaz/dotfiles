# powershell

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 

## search file - containing a string
```powershell
Get-ChildItem C:\ -Recurse -ErrorAction Ignore |  select-string '<pattern>' -List | select Path
```

## search file -  having extension
```powershell
Get-ChildItem -Recurse -Filter '*.js' -ErrorAction 'SilentlyContinue' 
```

## search file -  having Alternate Data Streams
```powershell
gci -recurse | % { gi $_.FullName -stream * } | where stream -ne ':$Data'
```

## search file -  Read display alternate datastream
```powershell
 Get-Content <path> -Stream <stream>
```

## search file - credential manager
```powershell
cmdkey /list
```