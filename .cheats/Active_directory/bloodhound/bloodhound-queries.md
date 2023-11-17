# bloodhound-console-queries

% bloodhound, Active directory enumeration

## query - all ForceChangePassword edges
#plateform/linux #target/serve #cat/UTILS
```bash
match p=(a)-[:ForceChangePassword]->(b) return p
```

## query - Find interesting privileges/ACEs that have been configured to DOMAIN USERS group
https://hausec.com/2019/09/09/bloodhound-cypher-cheatsheet/
```
MATCH (m:Group) WHERE m.name =~ 'DOMAIN USERS@.*' MATCH p=(m)-[r:Owns|WriteDacl|GenericAll|WriteOwner|ExecuteDCOM|GenericWrite|AllowedToDelegate|ForceChangePassword]->(n:Computer) RETURN p
```


## query - Find interesting privileges/ACEs that have been configured to users
https://hausec.com/2019/09/09/bloodhound-cypher-cheatsheet/
```
MATCH p=(u:User)-[:Owns|WriteDacl|GenericAll|WriteOwner|ExecuteDCOM|GenericWrite|AllowedToDelegate|ForceChangePassword]->(t) RETURN p
```

## query - Find interesting privileges/ACEs that have been configured to users
https://hausec.com/2019/09/09/bloodhound-cypher-cheatsheet/
```
MATCH p=(u:Computer)-[:Owns|WriteDacl|GenericAll|WriteOwner|ExecuteDCOM|GenericWrite|AllowedToDelegate|ForceChangePassword]->(t) RETURN p
```