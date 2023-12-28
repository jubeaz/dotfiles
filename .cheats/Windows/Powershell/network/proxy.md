# pwsh

#plateform/windows #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

## Network - Get http Proxy
```powershell
[System.Net.WebRequest]::DefaultWebProxy.GetProxy("http://<ip>/<url>")
```

## Network - set http proxy
```powershell
[system.net.webrequest]::DefaultWebProxy = new-object System.Net.WebProxy("http://<proxaddress|$proxyAddr>")
```