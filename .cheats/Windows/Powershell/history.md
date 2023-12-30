# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 


## history - get history path
usually $env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt
```powershell
(Get-PSReadlineOption).HistorySavePath
```


## powershell - Search password PSHistory
#cat/CREDENTIAL-ACCESS/CREDS_HUNT
```powershell
cat (Get-PSReadlineOption).HistorySavePath | sls <pattern>
```