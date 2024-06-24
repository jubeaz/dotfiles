# cmd.exe
% windows, Active Directory

#plateform/windows #target/local #cat/RECON/AD

## AD - get current DC
```
echo %logonserver%
```

## AD - get domain name
```
echo %USERDOMAIN%
```

## AD - get domain name (2)
```
echo %USERDNSDOMAIN%
```

## AD - get computer domain name (3)
```
systeminfo | findstr /B /C:"Domain"
```

## AD - get name of the dc
```
set logonserver #Get name of the domain controller
```

## AD - nslookup AD - domain
```
nslookup -type=SRV _ldap._tcp.dc._msdcs.<domain_fqdn>
```

## AD - list of domain groups
```
net groups /domain
```

## AD - list of computer connected to the domain
```
net group "domain computers" /domain
```

## AD - List all PCs of the domain
```
net view /domain
```

## AD - list domain controllers
```
nltest /dclist:<domain_fqdn>
```

## AD - list pc accounts of domain controllers
```
net group "Domain Controllers" /domain
```

## AD - List users with domain admin privileges
```
net group "Domain Admins" /domain
```

## AD - Add user to domain admin group
```
net group "Domain Admins" <username> /add /domain
```

## AD - Add user to domain admin group - FR
```
net group "Admins du domaine" <username> /add /domain
```

## AD - List users that belongs to the administrators group inside the domain
```
net localgroup administrators /domain
```

## AD - List all domain users
```
net user /domain
```

## AD - get user domain information
```
net user <username> /domain
```

## AD - domain password and lockout policy
```
net accounts /domain
```

## AD - get mapping of the trust relationships
```
nltest /domain_trust /ALL_TRUSTS /V /server:<dest_dc_fqdn>
```

## AD - enable SIDHistory Filtering
Enable history on source domain for target domain (useful for forest extra SID exploitation)
```
netdom trust <source_domain> /d:<dst_domain_fqdn> /enablesidhistory:yes
```

## AD - check SIDHistory filtering
Enable history on source domain for target domain (useful for forest extra SID exploitation)
```
netdom trust <source_domain> /d:<dst_domain_fqdn> /quarantine
```