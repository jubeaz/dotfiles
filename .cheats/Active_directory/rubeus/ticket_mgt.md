# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 


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