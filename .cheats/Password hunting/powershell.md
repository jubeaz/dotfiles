# powershell

#plateform/windows #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

## powershell -  Search content
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_HUNT 

```
Get-ChildItem C:\ -Recurse -ErrorAction Ignore |  select-string '<pattern>' -List | select Path
```


## powershell -  Search files having extension
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_HUNT 

```
Get-ChildItem -Recurse -Filter '*.js' -ErrorAction 'SilentlyContinue' 
```

## powershell -  Search files having Alternate Data Streams
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_HUNT 

```
gci -recurse | % { gi $_.FullName -stream * } | where stream -ne ':$Data'
```

## powershell -  Read display alternate datastream
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_HUNT 

```
 Get-Content <path> -Stream <stream>
```


## powershell -  search creds in eventlogs
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_HUNT 

```
 Get-WinEvent -LogName security | where { $_.ID -eq 4688 -and $_.Properties[8].Value -like '*/user*'} | Select-Object @{name='CommandLine';expression={ $_.Properties[8].Value }}
```