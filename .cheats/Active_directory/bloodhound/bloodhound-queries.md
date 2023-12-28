# bloodhound-queries

% bloodhound-queries, Active directory enumeration, https://hausec.com/2019/09/09/bloodhound-cypher-cheatsheet
#plateform/linux #target/serve #cat/AD/RECON

## query - all ForceChangePassword edges
```bash
match p=(a)-[:ForceChangePassword]->(b) return p
```

## query - Find interesting privileges/ACEs that have been configured to DOMAIN USERS group
```
MATCH (m:Group) WHERE m.name =~ 'DOMAIN USERS@.*' MATCH p=(m)-[r:Owns|WriteDacl|GenericAll|WriteOwner|ExecuteDCOM|GenericWrite|AllowedToDelegate|ForceChangePassword]->(n:Computer) RETURN p
```


## query - Find interesting privileges/ACEs that have been configured to users
```
MATCH p=(u:User)-[:Owns|WriteDacl|GenericAll|WriteOwner|ExecuteDCOM|GenericWrite|AllowedToDelegate|ForceChangePassword]->(t) RETURN p
```

## query - Find interesting privileges/ACEs that have been configured to users
```
MATCH p=(u:Computer)-[:Owns|WriteDacl|GenericAll|WriteOwner|ExecuteDCOM|GenericWrite|AllowedToDelegate|ForceChangePassword]->(t) RETURN p
```