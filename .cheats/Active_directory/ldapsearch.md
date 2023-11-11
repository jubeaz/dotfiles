# ldapsearch

#plateform/linux  #target/remote  #protocol/ldap  #port/639 #port/389 #cat/RECON

% ldap, Active Directory

## ldapsearch - auth - simple binding
#cat/ATTACK/CONNECT 
```
ldapsearch -LLL  -H ldap://<ip> -x -D <user>@<sub-domain>.<domain> -w '<password>' -b 'DC=<sub-domain>,DC=<domain>'  
```

## ldapsearch - auth - GSSAPI binding
#cat/ATTACK/CONNECT 
```
export KRB5CCNAME=<ccache> && ldapsearch -LLL -Y GSSAPI 
```

## ldapsearch - scope 
#cat/ATTACK/CONNECT 

scope = (base|one|sub|children) default sub
```
ldapsearch -x -H ldap://<dc_fqdn> -s <scope>
```

## ldapsearch - BaseRequest 
#cat/ATTACK/CONNECT 
```
ldapsearch -H ldap://<dc_fqdn> <auth> -b "dc=<domain>,dc=<path>" 
```


## ldapsearch - FullRequest - get AD time
```
ldapsearch -LLL -x -H ldap://<IP> -b '' -s base '(objectclass=*)' | grep currentTime
```

## ldapsearch - FullRequest - get MAQ
```
ldapsearch -LLL -x -H ldap://<IP> -b '' -s sub '(objectclass=domain)' | grep "ms-ds-machineaccountquota" -i
```

## ldapsearch - Request - SPN
```
'servicePrincipalName=*' servicePrincipalName
```
	

## ldapsearch - Request Users - all
```
'(&(objectCategory=person)(objectClass=user))'
```

## ldapsearch - Request Users - protected by adminCount
```
'(&(objectCategory=user)(adminCount=1))'
```

## ldapsearch - Request Users - with password, pass, identifiant or pwd in their description
```
'(&(objectCategory=user)(|(description=*pass*)(description=*password*)(description=*identifiant*)(description=*pwd*)))'
```

## ldapsearch - Request Users - kerberoastables 
```
'(&(objectClass=user)(servicePrincipalName=*)(!(cn=krbtgt))(!(userAccountControl:1.2.840.113556.1.4.803:=2)))'
```

## ldapsearch - Request Users - asrep-roastables 
```
'(&(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=4194304))'
```

## ldapsearch - Request Users - that need to change password on next login
```
'(&(objectCategory=user)(pwdLastSet=0))'
```

## ldapsearch - Request Users - that are almost Locked-Out
```
'(&(objectCategory=user)(badPwdCount>=4)')
```


## ldapsearch - Request Users - with Constrined Delegation
```
"(&(objectCategory=user)(msds-allowedtodelegateto=*))"  samaccountname, msDS-AllowedToDelegateTo
```

## ldapsearch - Request Groups - all
```
'(objectCategory=group)'
```

## ldapsearch - Request Groups - protected by adminCount
```
'(&(objectCategory=group)(adminCount=1))'
```

## ldapsearch - Request Services - servicePrincipalName
```
'(servicePrincipalName=*)'
```

## ldapsearch - Request Services - specific services from their servicePrincipalName
```
'(servicePrincipalName=http/*)'
```


## ldapsearch - Request Computers - with laps enabled and corresponding laps password if able
```
'(ms-Mcs-AdmPwdExpirationtime=*)' ms-Mcs-AdmPwd
```

## ldapsearch - Request Computers - with a given Operating System
```
'(&(objectCategory=Computer)(operatingSystem=Windows XP*))'
```

## ldapsearch - Request Computers - Workstations
```
'(sAMAccountType=805306369)'
```

## ldapsearch - Request Computers - having a KeyCredentialLink
```
'(&(objectClass=computer)(msDS-KeyCredentialLink=*))'
```


## ldapsearch - Request Computers - all DC
```
'(&(objectCategory=computer)(userAccountControl:1.2.840.113556.1.4.803:=8192))'
```

## ldapsearch - Request Computers - with Constrined Delegation
```
"(&(objectCategory=computer)(msds-allowedtodelegateto=*))" cn, dnshostname, samaccountname, msds-allowedtodelegateto 
```
