

# powershell
% windows, process

#plateform/windows #target/local #cat/RECON/PROCESS #tag/powershell 

## process - find all 
```powershell
Get-Process | ft id, name
```

## process - find all (restricted to session)
```powershell
Get-Process | ? {$_.SI -eq (Get-Process -PID $PID).SessionId}
```

## process - find all (CIM)
```powershell
Get-CIMInstance -Class Win32_Process -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## process - find all (WMI)
```powershell
Get-WmiObject -Class Win32_Process -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## process - get info 
```powershell
Get-Process -Id <process_id> | fl *
```


## process - get info (CIM)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-CIMInstance -Class Win32_Process -Filter "name ='<service_name>' " | Select-Object *
```

## process - get info (WMI)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-WmiObject -Class Win32_Process -Filter "name ='<service_name>' " | Select-Object *
```

