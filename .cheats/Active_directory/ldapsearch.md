# ldapsearch

#plateform/linux  #target/remote  #protocol/ldap  #port/639 #port/389 #cat/RECON

% ldap, Active Directory

## auth - get available methods 
https://ldapwiki.com/wiki/Wiki.jsp?page=Microsoft%20Active%20Directory
#cat/ATTACK/CONNECT 
```
ldapsearch -x -b '' -s base supportedSASLMechanisms -H ldap://<dc_ip>
```

## auth - simple binding
https://ldapwiki.com/wiki/Wiki.jsp?page=Microsoft%20Active%20Directory
#cat/ATTACK/CONNECT 
```
ldapsearch -LLL  -H ldap://<dc_ip> -x -D <user>@<domain_fqdn> -w '<password>' -b '<domain_ldap_base>'  
```

## auth - GSSAPI binding
https://ldapwiki.com/wiki/Wiki.jsp?page=Microsoft%20Active%20Directory
#cat/ATTACK/CONNECT 
```
export KRB5CCNAME=<ccache> && ldapsearch -LLL -Y GSSAPI  -H ldap://<dc_ip> -b '<domain_ldap_base>' 
```

## scope 
#cat/ATTACK/CONNECT 

scope = (base|one|sub|children) default sub
```
ldapsearch -x -H ldap://<dc_ip> -s <scope>
```

## Extended controls - unlimited results
#cat/ATTACK/CONNECT 
```
-E pr=1000/noprompt
```

## Extended controls - access to DACL (nTSecurityDescriptor)
#cat/ATTACK/CONNECT 
```
-E '!1.2.840.113556.1.4.801=::MAMCAQc='  
```

## FullRequest - get auth mecanism
```bash
 ldapsearch -H ldap://<IP>  -x -D j<user>@<domain_fqdn> -w '<password>'   -b '' -s base supportedSASLMechanisms dn:
```

## FullRequest - get AD time
```
ldapsearch -LLL -x -H ldap://<IP> -b '' -s base '(objectclass=*)' | grep currentTime
```

## FullRequest - get Machine Account Quota (MAQ)
```
ldapsearch -LLL  -H ldap://<dc_ip> -x -D <user>@<domain_fqdn> -w '<password>' -b 'DC=<domain_netbios>,DC=<domain_tld>' -s sub '(objectclass=domain)' | grep "ms-ds-machineaccountquota" -i
```

## FullRequest - deleted objects (tombstone)
```
ldapsearch -LLL  -H ldap://<dc_ip> -x -D <user>@<domain_fqdn> -w '<password>' -b 'CN=Deleted Objects,DC=<domain_netbios>,DC=<domain_tld>' -E '!1.2.840.113556.1.4.417'
```


## Request - SPN
```
'servicePrincipalName=*' servicePrincipalName
```
	

## User req - all
```
'(&(objectCategory=person)(objectClass=user))'
```

## User req - protected by adminCount
```
'(&(objectCategory=user)(adminCount=1))'
```

## User req - with password, pass, identifiant or pwd in their description
```
'(&(objectCategory=user)(|(description=*pass*)(description=*password*)(description=*identifiant*)(description=*pwd*)))'
```

## User req - kerberoastables 
```
'(&(objectClass=user)(servicePrincipalName=*)(!(cn=krbtgt))(!(userAccountControl:1.2.840.113556.1.4.803:=2)))'
```

## User req - asrep-roastables 
```
'(&(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=4194304))'
```

## User req - that need to change password on next login
```
'(&(objectCategory=user)(pwdLastSet=0))'
```

## User req - that are almost Locked-Out
```
'(&(objectCategory=user)(badPwdCount>=4)')
```


## User req - with Constrained Delegation
```
"(&(objectCategory=user)(msds-allowedtodelegateto=*))"  samaccountname, msDS-AllowedToDelegateTo
```

## User req - with Unconstrained Delegation
```
"(&(objectCategory=user)(userAccountControl:1.2.840.113556.1.4.803:=524288))" samaccountname  
```

## Groups req - all
```
'(objectCategory=group)'
```

## Groups req - protected by adminCount
```
'(&(objectCategory=group)(adminCount=1))'
```

## Services req - servicePrincipalName
```
'(servicePrincipalName=*)'
```

## Services req - specific services from their servicePrincipalName
```
'(servicePrincipalName=http/*)'
```

## Services req - Group Managed Service Accounts NTHash (GMSA) 
```
 -o ldif-wrap=no '(&(ObjectClass=msDS-GroupManagedServiceAccount))' msDS-ManagedPassword
```

## Computers req - with laps enabled and corresponding laps password if able
```
'(ms-Mcs-AdmPwdExpirationtime=*)' ms-Mcs-AdmPwd
```

## Computers req - with a given Operating System
Windows Server 2003*
Windows Server 2008*
Windows XP Professional
Windows Vista*
```
'(&(objectCategory=Computer)(operatingSystem=<os>))'
```

## Computers req - Workstations
```
'(sAMAccountType=805306369)'
```

## Computers req - all DC
```
'(&(objectCategory=computer)(userAccountControl:1.2.840.113556.1.4.803:=8192))'
```

## Computers req - All global catalog servers
```
'(&(objectCategory=computer)(userAccountControl:1.2.840.113556.1.4.803:=8192))'
```

## Computers req - having a KeyCredentialLink
```
'(&(objectClass=computer)(msDS-KeyCredentialLink=*))'
```

## Computers req - with Constrained Delegation
```
"(&(objectClass=computer)(msds-allowedtodelegateto=*))" cn, dnshostname, samaccountname, msds-allowedtodelegateto 
```

## Computers req - with Unconstrained Delegation
```
"(&(objectCategory=computer)(userAccountControl:1.2.840.113556.1.4.803:=524288))" samaccountname,dnshostname,operatingsystem  
```

## Computers req - BitLocker Recovery Passwords
```
'(objectClass=computer)' msfve-recoverypassword
```

## Certificate req - Enrollment Services
```
-b "CN=Enrollment Services,CN=Public Key Services,CN=Services,CN=Configuration,DC=<domain_netbios>,DC=<domain_tld>" 
```

## Certificate req - Certification Authorities
```
-b "CN=Certification Authorities,CN=Public Key Services,CN=Services,CN=Configuration,DC=<domain_netbios>,DC=<domain_tld>" 
```

## Certificate req - certificate templates
```
-b "CN=Certificate Templates,CN=Public Key Services,CN=Services,CN=Configuration,DC=<domain_netbios>,DC=<domain_tld>" 
```


## Certificate req - certificate templates (2)
```
-b 'CN=Configuration,DC=<domain_netbios>,DC=<domain_tld>' '(objectCategory=pKICertificateTemplate)'

```

## Certificate req - Public key services
```
-b "CN=Public Key Services,CN=Public Key Services,CN=Services,CN=Configuration,DC=<domain_netbios>,DC=<domain_tld>" 
```


## Risk req - foreignSecurityPrincipal
```
"(objectClass=foreignSecurityPrincipal)"
```

## Risk req - PASSWD_NOTREQD 
```
"(&(objectCategory=Person)(objectClass=User)(userAccountControl:1.2.840.113556.1.4.803:=32))"
```

## Risk req - DONT_EXPIRE_PASSWORD
```
"(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=65536))"
```

## Risk req - NOT require Kerberos Pre-Authentication 
```
"(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=4194304))"
```

## Risk req - Sensitive and not trusted
```
"(userAccountControl:1.2.840.113556.1.4.803:=1048576)"
```

## Risk req - USE_DES_KEY_ONLY
```
"(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=2097152))"
```

## trust req - 
```
'(objectClass=trustedDomain)'
```