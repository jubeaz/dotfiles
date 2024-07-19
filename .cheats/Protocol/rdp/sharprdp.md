# sharprdp
% rdp, windows
#plateform/windows  #target/remote  #protocol/rdp #port/3389 #cat/ATTACK/CONNECT 

## connection and execution
```powershell
sharprdp.exe computername=<target_fqdn> command="<command>" username=<domain_fqdn>\<user> password=<password>
```

## Exec program as child process of cmd or powershell
```powershell
sharprdp.exe computername=<target_fqdn> command="<command>" username=<domain_fqdn>\<user> password=<password> exec=cmd
```
