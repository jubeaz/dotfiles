# bloodhound-queries

% bloodhound-queries, Active directory enumeration, 
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

## query - ALL SESSIONS
```
MATCH p=(m:Computer)-[r:HasSession]->(n:User) RETURN p
```
## query - ALL USERS
```
MATCH (u:User {domain: "<domain_fqdn>"} ) return u
```

## query - ALL USERS (domain)
```
MATCH (u:User {domain: "<domain_fqdn>"} ) return u
```

## query - Users with SIDHistory
```
MATCH p=(u:User) -[:HasSIDHistory]->(ud:User) return p
```

## query - ALL COMPUTERS
```
MATCH (c:Computer) return c
```

## query - ALL GPOs
```
Match (n:GPO) return n
```