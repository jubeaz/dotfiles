# windows
% windows, process

#plateform/windows #target/local #cat/RECON/PROCESS



# powershell
% windows, process

#plateform/windows #target/local #cat/RECON/PROCESS #tag/powershell 

## find all process 
```powershell
Get-Process | ft id, name
```

## find user process restricted to session
```powershell
Get-Process | ? {$_.SI -eq (Get-Process -PID $PID).SessionId}
```

## find all process (CIM)
```powershell
Get-CIMInstance -Class Win32_Process -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## find all process (WMI)
```powershell
Get-WmiObject -Class Win32_Process -Filter "<prop|StartName> ='<value|NT Authority%>' " | Select-Object *
```


## get basic process info 
```powershell
Get-Process -Id <process_id> | fl *
```


## get process info (CIM)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-CIMInstance -Class Win32_Process -Filter "name ='<service_name>' " | Select-Object *
```

## get process info (WMI)
filters: 
    - "ProcessId='<process_id>'"
```powershell
Get-WmiObject -Class Win32_Process -Filter "name ='<service_name>' " | Select-Object *
```

