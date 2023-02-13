# bloodhound

% bloodhound, Active directory enumeration

## start neo4j server (systemctl)
#plateform/linux #target/serve #cat/UTILS
https://neo4j.com/docs/

```bash
sudo systemctl start neo4j
```

## bloodhound - collect data (dns)
#plateform/linux #target/remote #port/389 #port/631 #cat/RECON
https://github.com/fox-it/BloodHound.py

```bash
bloodhound-python -ns <ip> -d <domain> -u <user> -p <password> -c all
```
