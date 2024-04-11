# smdkey

% cmdkey, password hunting

## cmdkey -  list saved credentials
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_HUNT 

```
cmdkey /list
```


# SessionGopher

% SessionGopher, password hunting

## SessionGopher -  locally
#plateform/windows  #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT 

```
Import-Module .\SessionGopher.ps1; Invoke-SessionGopher -Thorough
```

## SessionGopher -  all domain
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_HUNT 

```
Import-Module .\SessionGopher.ps1; Invoke-SessionGopher -AllDomain -u <domain_fqdn>\<user> -p <password>
```

## SessionGopher -  Computer 
#plateform/windows  #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT 

```
Import-Module .\SessionGopher.ps1; Invoke-SessionGopher -Target <computer> -Thorough
```

## SessionGopher -  Computer list
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_HUNT 

```
Import-Module .\SessionGopher.ps1; Invoke-SessionGopher -iL computerlist.txt -u <domain_fqdn>\<user> -p <password>
```