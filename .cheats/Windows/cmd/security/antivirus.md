# cmd.exe
% windows, security, antivirus, defender

#plateform/windows #target/local #cat/RECON/SECURITY/DEFENDER #tag/cmd 

## defender - get service Status
```
sc.exe query windefend
```

## defender - get antivirus
```
wmic.exe /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List
```

#cat/DEFENSE-EVASION/SECURITY/DEFENDER

## Defender - stop service
```powershell
sc.exe config WinDefend start= disabled
sc.exe stop WinDefend
```

