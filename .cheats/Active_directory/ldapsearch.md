# ldapsearch

#plateform/linux  #target/remote  #protocol/ldap  #port/639 #port/389

% ldap, Active Directory

## ldapsearch - auth - simple binding
#cat/RECON

```
ldapsearch -LLL  -H ldap://<ip> -x -D <login>@<sub-domain>.<domain> -w '<password>' -b 'DC=<sub-domain>,DC=<domain>'  
```

## ldapsearch - auth - GSSAPI binding
#cat/RECON

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
#cat/RECON

```
ldapsearch -LLL -x -H ldap://<IP> -b '' -s base '(objectclass=*)' | grep currentTime
```

## ldapsearch - Request - SPN
#cat/ATTACK/CONNECT 
```
"servicePrincipalName=*" servicePrincipalName
```
	

## ldapsearch - Request - all users
#cat/ATTACK/CONNECT 
```
'(&(objectCategory=person)(objectClass=user))'
```

## ldapsearch - Request - users protected by adminCount
#cat/ATTACK/CONNECT 
```
'(&(objectCategory=user)(adminCount=1))'
```

## ldapsearch - Request - users with password, pass, identifiant or pwd in their description
#cat/ATTACK/CONNECT 
```
'(&(objectCategory=user)(|(description=*pass*)(description=*password*)(description=*identifiant*)(description=*pwd*)))'
```

## ldapsearch - Request - computers with laps enabled and corresponding laps password if able
#cat/ATTACK/CONNECT 
```
'(ms-Mcs-AdmPwdExpirationtime=*)' ms-Mcs-AdmPwd
```

