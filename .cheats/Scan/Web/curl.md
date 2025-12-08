# curl

% web



## Auth - NTLM
#plateform/linux #target/remote #cat/RECON 
```bash
--ntlm -u '<domain_netbios>\<user>:<password>'
```

## Auth - Basic
```bash
-u '<user>:<password>'
```

## Auth - token
```bash
-H "Authorization: Bearer <token>"
```

## Proxy - burp
```bash
--proxy http://localhost:8080
```

## Header - inline
```bash
-H "<header_name>: <header_value>"
```


## Header - file
```bash
-H @<header_file>
```

## POST - data for multipart/form-data (upload)
```bash
curl -XPOST -H "Content-Type: application/x-www-form-urlencoded" 
--data-urlencode '<param_1_name>=<param_1_value>' --data-urlencode '<param_2_name>=<param_2_value>'  <url>
```

## POST - data for multipart/form-data (upload)
```bash
curl -XPOST -F "file=@<file|/etc/passwd>;filename=<filename|passwd>" <url>
```

## POST - json (inline)
```bash
-d '{"message":"hello"}' -H "Content-Type: application/json"
```

## POST - json (file)
```bash
-d '-d @<file|content>.json -H "Content-Type: application/json"
```

## GET - url encode parametes
```bash
-XGET --data-urlencode '<param_1_name>=<param_1_value>' --data-urlencode '<param_2_name>=<param_2_value>' <url>
```


## GET - links from an url
#plateform/linux #target/remote #cat/RECON 
```bash
curl -k -s <url> | grep -o 'http://[^"]*' | cut -d "/" -f 3 | sort -u
```
