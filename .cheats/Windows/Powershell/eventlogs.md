# pwsh

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 


## eventlog -  search creds (new process cmdline)
```powershell
 Get-WinEvent -LogName security | where { $_.ID -eq 4688 -and $_.Properties[8].Value -like '*/user*'} | Select-Object @{name='CommandLine';expression={ $_.Properties[8].Value }}
```

## eventlog -  search creds (account failed to log)
```powershell
Get-WinEvent -FilterHashTable @{LogName="Security"; ID=4625} | Select-Object TimeCreated, Message | Format-Table -Wrap > c:\temp\4625.txt ; gc C:\temp\4625.txt | Select-String "Account Name"

```

