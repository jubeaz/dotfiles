# msmailprobe
% exchange
#plateform/linux  #target/remote  #protocol/exchange 

## _url
```
https://github.com/busterb/msmailprobe
```

## _desc
```
It is widely known that OWA (Outlook Webapp) is vulnerable to time-based user enumeration attacks. This tool leverages all known, and even some lesser-known services exposed by default Exchange installations to enumerate users. It also targets Office 365 for error-based user enumeration.
```

## _links
```
https://github.com/busterb/msmailprobe
```


## recon
#cat/RECON
```bash
msmailprobe identify -t <fqdn>
```


## user enumeration
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
msmailprobe userenum --onprem -t <fqdn>  -U ./users.txt -o valids.txt
```