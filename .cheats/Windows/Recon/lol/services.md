# windows
% windows, service

#plateform/windows #target/local #cat/RECON/SERVICES

## get service ACL (SSDL)
```cmd
sc.exe sdshow <service_name>
```

## get service config (psservice)
```cmd
.\psservice.exe config '<service_name>' -accepteula
```

## get service ACL (accesschk)
```cmd
.\accesschk.exe -c <service_name> -l -accepteula
```

## get service ACL (psservice)
```cmd
.\psservice.exe security '<service_name>' -accepteula
```
