# mailsniper
% exchange
#plateform/windows  #target/remote  #protocol/exchange 


## _url
```
https://github.com/dafthack/MailSniper
```

## _desc
```
MailSniper is a penetration testing tool for searching through email in a Microsoft Exchange environment for specific terms (passwords, insider intel, network architecture information, etc.). It can be used as a non-administrative user to search their own email or by an Exchange administrator to search the mailboxes of every user in a domain.
```

## _links
```
https://github.com/dafthack/MailSniper
```

##  Invoke-DomainHarvestOWA
#cat/ATTACK/BRUTEFORCE-SPRAY 
```powershell
Invoke-DomainHarvestOWA -ExchHostname <url> -DomainList <domain list file> -Outfile <output file>
```

## user enumeration
#cat/ATTACK/EXPLOIT 
```powershell
Invoke-UsernameHarvestOWA –UserList .\username_list.txt –ExchHostname <fqdn> –Domain <domain_fqdn> –OutFile potential_usernames.txt
```

## user enumeration (GAL)
```powershell
Get-GlobalAddressList -ExchHostname <fqdn> -Username <user> -Password <password> -OutFile globaladdresslist.txt
```

## password spray (OWA)
```powershell
Invoke-PasswordSprayOWA
```

## password spray (EWS)
```powershell
Invoke-PasswordSprayEWS
```