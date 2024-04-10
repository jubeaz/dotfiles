# curl

% web

## extract links from an url
#plateform/linux #target/remote #cat/RECON 
```
curl -k -s <url> | grep -o 'http://[^"]*' | cut -d "/" -f 3 | sort -u
```


## curl NTLM
#plateform/linux #target/remote #cat/RECON 
```
curl -k --ntlm -u '<domain_netbios>\<user>:<password>' <url>
```


## curl NTLM
#plateform/linux #target/remote #cat/RECON 
```
curl -k --ntlm -u '<domain_netbios>\<user>:<password>' <url>
```

