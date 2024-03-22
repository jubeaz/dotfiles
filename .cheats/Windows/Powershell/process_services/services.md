# pwsh
% windows, service

#plateform/windows #target/local #cat/RECON/SERVICES #tag/powershell 

## services - list all
```powershell
Get-Service | Where {$_.<prop|Status> -eq '<value|Running>'}
```

## services - list all (CIM)
```powershell
Get-CIMInstance -Class Win32_Service -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## services - list all (WMI)
```powershell
Get-WmiObject -Class Win32_Service -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## services - get info (basic) 
```powershell
Get-Service <service_name> |fl *
```

## services - get info (CIM)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-CIMInstance -Class Win32_Service -Filter "name ='<service_name>' " | Select-Object *
```

## services - get info (WMI)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-WmiObject -Class Win32_Service -Filter "name ='<service_name>' " | Select-Object *
```

## services - get ACL
https://rohnspowershellblog.wordpress.com/2013/03/19/viewing-service-acls/
```powershell
"<service_name>" | Get-ServiceAcl | select -ExpandProperty Acces
```


## services - reconfigure
```powershell
Set-Service -Name <service>
```

## services - start 
```powershell
Start-Service -Name <service>
```

## services - restart 
```powershell
Restart-Service -Name <service>
```

## services - stop 
```powershell
Stop-Service -Name <service>
```
