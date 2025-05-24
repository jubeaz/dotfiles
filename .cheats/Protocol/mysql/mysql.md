# Mysql

% mysql, database, db, 3306
#plateform/linux  #target/remote  #protocol/mysql  #port/3306
## connect
#cat/ATTACK/CONNECT 
```bash
mysql -u <user> -p"<password>" -h <hostname> <database>
```

## execute single request
#cat/ATTACK
```bash
mysql -u <user> -p"<password>" -h <hostname> <database> -e "select * from users;" -E
```

## execute single request (local)
#cat/ATTACK
```bash
mysql -u <user> -p"<password>"   -e "use <database>; select * from users;" -E
```


## Create database
#cat/UTILS 
```
mysql -u <user> -p -e "create database <database> character set UTF8mb4 collate utf8mb4_bin"
```

## Export database
#cat/UTILS 
```
mysqldump -u <user> -p <database> > <path>
```

## Import database
#cat/UTILS 
```
mysql -u <user> -p <database> <path>
```
