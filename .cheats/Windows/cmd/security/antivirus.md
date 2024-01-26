# cmd.exe
% windows, security, antivirus, defender

#plateform/windows #target/local #cat/RECON/SECURITY/DEFENDER 


## defender - get service Status
```
sc.exe query windefend
```

## defender - get antivirus
```
wmic.exe /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List
```



