# bloodhound-ce

% bloodhound-ce, Active directory enumeration
#plateform/linux #target/local #cat/AD/RECON


## _url
```
https://github.com/SpecterOps/BloodHound
```

## _desc
```

```

## _links
```
https://luemmelsec.github.io/Fantastic-BloodHound-Queries-and-Where-to-Find-Them/
https://m4lwhere.medium.com/the-ultimate-guide-for-bloodhound-community-edition-bhce-80b574595acf
https://hausec.com/2019/09/09/bloodhound-cypher-cheatsheet
```

## _install
```
curl -L https://ghst.ly/getbhce && docker compose pull && docker compose up
```

## start
```bash
docker-compose -f ~/.local/docker/bloodhound/docker-compose.yml up
```

## login
```
http://localhost:8081/ui/login
```

## console
creds in docker compose file (neo4j / bloodhoundcommunityedition)
```
http://localhost:7474
```