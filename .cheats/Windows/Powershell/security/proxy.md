# pwsh
% windows, security, proxy

#plateform/windows #target/local #cat/RECON/SECURITY/PROXY #tag/powershell 


## Network - Get proxy 
Returns a proxy configured with the Internet options settings of the currently impersonated user.
```powershell
[System.Net.WebRequest]::GetSystemWebProxy()
```

## Network - Get proxy for target 
Returns a proxy configured with the Internet options settings of the currently impersonated user.
```powershell
[System.Net.WebRequest]::GetSystemWebProxy()GetProxy("http://<ip>/<url>")
```


## proxy - get winInet (registry)
```powershell
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" ;  Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" -Name DefaultConnectionSettings
```

## proxy - get (netsh)
```powershell
netsh.exe winhttp show proxy
```