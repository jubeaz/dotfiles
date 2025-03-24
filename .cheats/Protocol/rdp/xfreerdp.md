# xfreerdp

% rdp, windows
#plateform/linux  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

##  (local) connect (creds)
```
xfreerdp3 /cert-ignore /u:<user> /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives
```

##  (local) Audio (creds)
```
xfreerdp3 /cert-ignore /u:<user> /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives /sound:sys:alsa
```


##  (local) connect (creds low latency)
```
xfreerdp3 /cert-ignore /u:<user> /p:<password> /v:<ip> /dynamic-resolution/drive:<name|share>,<share|./> +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```


##  (domain) connect (creds)
or /u:<user>@<domain_fqdn>
```
xfreerdp3 /cert-ignore /u:<domain_netbios>\<user>  /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives
```

##  (domain) connect (low latency)
or /u:<user>@<domain_fqdn>
```
xfreerdp3 /cert-ignore /u:<domain_netbios>\<user>  /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```


## (domain) pth
or /u:<user>@<domain_fqdn>
```
xfreerdp3 /cert-ignore /u:<domain_netbios>\<user> /pth:<nt_hash> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives
```

## (domain) pth (low latency)
or /u:<user>@<domain_fqdn>
```
xfreerdp3 /cert-ignore /u:<domain_netbios>\<user> /pth:<nt_hash>  /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```
