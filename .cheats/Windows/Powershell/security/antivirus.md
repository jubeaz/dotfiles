# powershell
% windows, security, antivirus, defender

#plateform/windows #target/local #cat/RECON/SECURITY/DEFENDER #tag/powershell 


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
Get-MpPreference | Select-Object -ExpandProperty ExclusionPath, ExclusionExtension
```

## defender - get exclusions extension
```powershell
Get-MpPreference | Select-Object  ExclusionExtension
```

Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Name TamperProtection -Value 0

reg add 'HKLM\SOFTWARE\Microsoft\Windows Defender\Features'/v %value% /d %newVal% /f