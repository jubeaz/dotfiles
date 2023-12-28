# bloodhound

% bloodhound, Active directory enumeration
#plateform/linux #target/local #cat/AD/RECON

## start neo4j server
```bash
sudo systemctl start neo4j
```

## start IHM
```bash
bloodhound
```

## aclpwn - from computer to domain - dry run
Aclpwn.py is a tool that interacts with BloodHound to identify and exploit ACL based privilege escalation paths.
https://github.com/fox-it/aclpwn.py

```
aclpwn -f <computer_name> -ft computer -d <domain> -dry
```



