# PsExec.exe
% windows, network

#plateform/windows #target/remote #cat/POSTEXPLOIT

## Remote - Exec command
```
PsExec.exe \\<target> -accepteula -i -u <domain_netbios>\<user> -p <password> cmd
```

## Remote - Exec command (SYSTEM)
```
PsExec.exe \\<target> -accepteula -i -s -u <domain_netbios>\<user> -p <password> cmd
```

## Local - Exec command
```
PsExec.exe \\<target> -accepteula -i -u <domain_netbios>\<user> -p <password> cmd
```

## Local - Exec command
```
PsExec.exe -accepteula -i -u <domain_netbios>\<user> -p <password> cmd
```

## Local - Exec command (SYSTEM)
```
PsExec.exe -accepteula -i -s -u <domain_netbios>\<user> -p <password> cmd
```