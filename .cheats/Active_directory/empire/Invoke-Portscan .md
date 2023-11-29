# Invoke-Portscan

% empire, windows, Invoke-Portscan

#plateform/windows #target/remote  #cat/RECON

## import module
empire/situational_awareness/network/Invoke-Portscan.ps1
https://powersploit.readthedocs.io/en/latest/Recon/Invoke-Portscan/
```powershell
. .\Invoke-Portscan.ps1
```


## scan top ports of a single target
https://powersploit.readthedocs.io/en/latest/Recon/Invoke-Portscan/
```powershell
Invoke-Portscan -Hosts <target> -T 4 -TopPorts <count|1000> -SkipDiscovery
```

## scan ports of a single target
https://powersploit.readthedocs.io/en/latest/Recon/Invoke-Portscan/
```powershell
Invoke-Portscan -Hosts <target> -T 4 -ports "<ports_comma_sep|5985>" -SkipDiscovery
```