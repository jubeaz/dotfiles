# msdat

% mssql, Microsoft SQL Server, 1433
#plateform/linux  #target/remote  #protocol/sql  #port/1433 



## get technical information (annonymous)
#cat/RECON
```
msdat.py mssqlinfo -s <target_ip> -p <port|1433> --get-max-info
```

## get technical information (auth)
#cat/RECON
```
msdat.py mssqlinfo -s <target_ip> -p <port|1433> -U <user> -P <password> --get-max-info
```

