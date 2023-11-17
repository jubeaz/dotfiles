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

# powershell
% windows, service

#plateform/windows #target/local #cat/RECON/SERVICES #tag/powershell 

## find all services 
```powershell
Get-Service | Where {$_.<prop|Status> -eq '<value|Running>'}
```

## find all services (CIM)
```powershell
Get-CIMInstance -Class Win32_Service -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## find all services (WMI)
```powershell
Get-WmiObject -Class Win32_Service -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## get basic service info 
```powershell
Get-Service <service_name> |fl *
```


## get service info (CIM)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-CIMInstance -Class Win32_Service -Filter "name ='<service_name>' " | Select-Object *
```

## get service info (WMI)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-WmiObject -Class Win32_Service -Filter "name ='<service_name>' " | Select-Object *
```

## get service ACL
https://rohnspowershellblog.wordpress.com/2013/03/19/viewing-service-acls/
```powershell
"<service_name>" | Get-ServiceAcl | select -ExpandProperty Acces
```