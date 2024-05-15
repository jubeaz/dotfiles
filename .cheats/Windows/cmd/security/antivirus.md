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


## defender - get realtime protections
DisableRealtimeMonitoring
```
reg.exe query "HKLM\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection" /s
```

## defender - get exclusions path
```
reg.exe query "HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions\Paths" /s
```

## defender - get exclusions exytension
```
reg.exe query "HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions\Extensions" /s
```

## defender - get status (registry)
```
reg.exe query "HKLM\SOFTWARE\Microsoft\Windows Defender" /v IsServiceRunning
```

#cat/DEFENSE-EVASION/SECURITY/DEFENDER

## Defender - stop service
```powershell
sc.exe config WinDefend start= disabled
sc.exe stop WinDefend
```
