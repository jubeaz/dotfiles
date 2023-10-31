# ldap

#plateform/linux  #target/remote  #protocol/ldap  #port/639 #port/389

## ldap nmap
#cat/RECON 
```
nmap -n -sV --script "ldap* and not brute" -p 389 <ip>
```


## ldapdomaindump
#cat/ATTACK/CONNECT 
```
ldapdomaindump --no-json --no-grep --authtype SIMPLE -o ldap_dump -r <ip> -u <domain>\\<username> -p '<password>'
```

## ldapsearch-ad - list all password policies including FGPP
#cat/ATTACK/CONNECT 
```
ldapsearch-ad.py --server '<dc_fqdn>' -d <domain> -u <username> -p <password> --type pass-pols
```

## ldapsearch-ad - get the FGPP applied to a group
#cat/ATTACK/CONNECT 
```
ldapsearch-ad.py --server '<dc_fqdn>' -d <domain> -u <username> -p <password> -t search -s '(samaccountname=<groupname>)' cn msDS-PSOApplied 
```

## ldapsearch-ad - get the FGPP applied to a user
#cat/ATTACK/CONNECT 
```
ldapsearch-ad.py --server '<dc_fqdn>' -d <domain> -u <username> -p <password> --type show-user -s '(samaccountname=<username>)'
```
