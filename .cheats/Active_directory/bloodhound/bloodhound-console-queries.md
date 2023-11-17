# bloodhound-console-queries

% bloodhound, Active directory enumeration

## start console query (neo4j/neo4j)
#plateform/linux #target/serve #cat/UTILS
```bash
https://localhost:7474
```

## Find computers that allow unconstrained delegation
https://hausec.com/2019/09/09/bloodhound-cypher-cheatsheet/
```
MATCH (c1:Computer)-[:MemberOf*1..]->(g:Group) WHERE g.objectsid ENDS WITH '-516' WITH COLLECT(c1.name) AS domainControllers MATCH (c2:Computer {unconstraineddelegation:true}) WHERE NOT c2.name IN domainControllers RETURN c2.name,c2.operatingsystem ORDER BY c2.name ASC
```

