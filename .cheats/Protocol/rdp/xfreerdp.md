# xfreerdp

% rdp, windows
#plateform/linux  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

##  connect local (creds)
```
xfreerdp /cert:ignore /u:<user> /p:<password> /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives
```


##  connect local (dynres) (creds)
```
xfreerdp /cert:ignore /u:<user> /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives
```

##  connect local (creds low latency)
```
xfreerdp /cert:ignore /u:<user> /p:<password> /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```

##  connect local (dynres) (creds low latency)
```
xfreerdp /cert:ignore /u:<user> /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```

##  connect domain (creds)
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /p:<password> /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives
```

##  connect domain (dynres)(creds)
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives
```

##  connect domain (creds low latency)
or /u:<user> /d:<domain_fqdn>
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /p:<password> /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```

##  connect domain (dynres)(creds low latency)
or /u:<user> /d:<domain_fqdn>
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /p:<password> /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```

## connect domain (pth)
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /pth:<nt_hash>  /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives
```

## connect domain (dynres)(pth)
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /pth:<nt_hash>  /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives
```

## connect domain (pth low latency)
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /pth:<nt_hash>  /v:<ip> /h:1024 /w:1640 /drive:<name|share>,<share|./> +drives +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```

## connect domain (dynres)(pth low latency)
```
xfreerdp /cert:ignore /u:<user> /d:<domain_fqdn> /pth:<nt_hash>  /v:<ip> /dynamic-resolution /drive:<name|share>,<share|./> +drives +drives /bpp:8 /compression -themes -wallpaper /clipboard /audio-mode:0 /auto-reconnect -glyph-cache
```