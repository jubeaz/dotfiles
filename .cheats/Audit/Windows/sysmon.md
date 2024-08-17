# sysmon

% sysmon, audit, windows
#plateform/windows #target/local #cat/AUDIT 

## project (list envents)
```
https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon
```


## config file
```
https://github.com/SwiftOnSecurity/sysmon-config
https://github.com/olafhartong/sysmon-modular
```

## install
```powershell
sysmon64.exe -i -accepteula -h md5,sha256,imphash -l -n
```

## update config
```powershell
sysmon64.exe -c <config_file>
```

## print schema
```powershell
sysmon64.exe -s
```