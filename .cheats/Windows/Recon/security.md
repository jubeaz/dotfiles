# windows
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY

## dump firewall
```
netsh advfirewall firewall dump
```

## show firewall config
```
netsh advfirewall show <profile|currentprofile>
```

## show firewall rules
```
netsh advfirewall firewall show rule name=all
```

## show UAC status
0 : inactive
1 : active
```
REG QUERY HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v EnableLUA
```

## show UAC Level
0: UAC won't prompt (like disabled)
1: ask for username and password to execute the binary with high rights (on Secure Desktop)
2: Always notify me ask for confirmation to the administrator when he tries to execute something with high privileges (on Secure Desktop)
3: like 1 but not necessary on Secure Desktop
4: like 2 but not necessary on Secure Desktop
5: ask the administrator to confirm to run non Windows binaries with high privileges
```
REG QUERY HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v ConsentPromptBehaviorAdmin
```

## show UAC remote administration tasks
0 (default): built-in Administrator account can do remote administration tasks
1: built-in account Administrator cannot do remote administration tasks
```
REG QUERY HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v LocalAccountTokenFilterPolicy
```

## get defender service Status
```
sc query windefend
```

## get antivirus
```
WMIC /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntivirusProduct Get displayNa
```


# powershell
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY #tag/powershell 

## get firewall commands
```
Get-Command -Noun NetFirewall* -verb Get
```


## show firewall config
```
Get-NetFirewallProfile
```


## show firewall settings
```
Get-NetFirewallSetting
```

## show firewall rules
```
Get-NetFirewallRule | Where { $_.Enabled -eq 'True' -and $_.Direction -eq 'Inbound' }
```


## show UAC status
0 : inactive
1 : active
```
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA
```

## show UAC Level
0: UAC won't prompt (like disabled)
1: ask for username and password to execute the binary with high rights (on Secure Desktop)
2: Always notify me ask for confirmation to the administrator when he tries to execute something with high privileges (on Secure Desktop)
3: like 1 but not necessary on Secure Desktop
4: like 2 but not necessary on Secure Desktop
5: ask the administrator to confirm to run non Windows binaries with high privileges
```
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin
```

## show UAC remote administration tasks
0 (default): built-in Administrator account can do remote administration tasks
1: built-in account Administrator cannot do remote administration tasks
```
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name LocalAccountTokenFilterPolicy
```

## get defender commands
```
Get-Command -Module Defender
```

## get defender service Status
```
(Get-Service windefend).Status
```

## get defender status
```
Get-MpComputerStatus
```

## get defender defensive modules status
```
Get-MpComputerStatus | Select RealTimeProtectionEnabled, IoavProtectionEnabled,Antispyware | FL
```

## get defender tamper protection status
```
Get-MpComputerStatus | Select IsTamperProtected, RealTimeProtectionEnabled | FL
```

## get defender exclusions path
```
Get-MpPreference | Select-Object -ExpandProperty ExclusionPath, ExclusionExtension
```

## get defender exclusions extension
```
Get-MpPreference | Select-Object  ExclusionExtension
```

Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Features' -Name TamperProtection -Value 0

reg add 'HKLM\SOFTWARE\Microsoft\Windows Defender\Features'/v %value% /d %newVal% /f