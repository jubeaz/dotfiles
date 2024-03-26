# psql-cmd

% postgres, 5432, 5433
#plateform/linux  #target/remote  #protocol/postgres #port/5432 #port/5433

## role - Get users roles
```sql
\du
```

## role - Get users roles & groups
```sql
SELECT
         r.rolname,
         r.rolsuper,
         r.rolinherit,
         r.rolcreaterole,
         r.rolcreatedb,
         r.rolcanlogin,
         r.rolbypassrls,
         r.rolconnlimit,
         r.rolvaliduntil,
         r.oid,
   ARRAY(SELECT b.rolname

            FROM pg_catalog.pg_auth_members m
            JOIN pg_catalog.pg_roles b ON (m.roleid = b.oid)
            WHERE m.member = r.oid) as memberof
, r.rolreplication
FROM pg_catalog.pg_roles r
ORDER BY 1;
```

## role - Check if current user is superiser
```sql
SELECT current_setting('is_superuser');
```

## role - grant access to groups
pg_execute_server_program
pg_read_server_files
pg_write_server_files
```sql
GRANT <group> TO "<user>";
```

## role - Get owners of tables
```sql
select schemaname,tablename,tableowner from pg_tables;
```

## role - Get tables where user is owner
```sql
select schemaname,tablename,tableowner
from pg_tables
WHERE tableowner = 'postgres';

```

## role - Get your permissions over tables
```sql
SELECT grantee,table_schema,table_name,privilege_type
FROM information_schema.role_table_grants;
```

## role - Check users privileges over a table
```sql
SELECT grantee,table_schema,table_name,privilege_type
FROM information_schema.role_table_grants
WHERE table_name='pg_shadow';

```

## role - list roles
```sql
SELECT rolname FROM pg_roles;
```

## role - Create a new login role
```sql
CREATE ROLE <username> WITH LOGIN PASSWORD '<password>';
```

## role - Grant privileges to a role
```sql
GRANT SELECT, INSERT, UPDATE ON <table_name> TO <role_name>;
```

## credentials - Read credentials 
```sql
SELECT usename, passwd from pg_shadow;
```

## function - Interesting functions are inside pg_catalog
```sql
\df * #Get all
\df *pg_ls* #Get by substring
\df+ pg_read_binary_file #Check who has access
```

## function - Get all functions of a schema 
```sql
\df pg_catalog.*
```

## function - Get all functions of a schema (select)
```sql
SELECT routines.routine_name, parameters.data_type, parameters.ordinal_position
FROM information_schema.routines
    LEFT JOIN information_schema.parameters ON routines.specific_name=parameters.specific_name
WHERE routines.specific_schema='pg_catalog'
ORDER BY routines.routine_name, parameters.ordinal_position;
```

## function - Get all functions of a schema (pg_proc)
```sql
SELECT * FROM pg_proc;
```

## filesystem - Read file
```sql
CREATE TABLE <table_name|jubeaz>(t text); COPY <table_name|jubeaz> from '<path|/etc/passwd>'; SELECT * FROM <table_name|jubeaz>;
```

## filesystem - simple file write
```sql
copy (select convert_from(decode('<basse64>','base64'),'utf-8')) to '<path>';
```

## rce - 
```sql

```

## privesc - 
```sql

```
