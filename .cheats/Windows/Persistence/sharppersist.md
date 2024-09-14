# SharPersist
% windows, persistence

#plateform/windows #target/local #cat/PERSIST

## repos and doc
```powershell
https://github.com/mandiant/SharPersist
```



## Scheduled Task Backdoor
```powershell
SharPersist -t schtaskbackdoor -c "C:\Windows\System32\cmd.exe" -a "/c calc.exe" -n "Something Cool" -m add
```