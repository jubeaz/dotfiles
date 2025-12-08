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

## privs - user privs
```sql
SELECT grantee, privilege_type FROM information_schema.user_privileges WHERE grantee="'root'@'localhost'"
```

## privs -- secure privs enabled
NULL means no read / write
```sql
SELECT @@secure_file_priv IS NOT NULL;
```

## config - global variables 
```sql
SELECT variable_name, variable_value FROM information_schema.global_variables
```