# windows

% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/POSTEXPLOIT 


## enable RDP 
```
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
```

## disable RDP
```
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
```

## enable RDP restricted admin
```
reg add HKLM\System\CurrentControlSet\Control\Lsa /t REG_DWORD /v DisableRestrictedAdmin /d 0x0 /f
```

## disable RDP restricted admin
```
reg add HKLM\System\CurrentControlSet\Control\Lsa /t REG_DWORD /v DisableRestrictedAdmin /d 0x1 /f
```

## Add firewall authorisation RDP
```
netsh.exe advfirewall firewall add rule name="Remote Desktop - User Mode (TCP-In)" dir=in action=allow program="%%SystemRoot%%\system32\svchost.exe" service="TermService" description="Inbound rule for the Remote Desktop service to allow RDP traffic. [TCP 3389] added by LogicDaemon's script" enable=yes profile=private,domain localport=3389 protocol=tcp
```

## firewall open port RDP
```
netsh firewall add portopening TCP 3389 "Remote Desktop"
```

# powershell
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/POSTEXPLOIT  #tag/powershell 

## enable RDP
```
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
```

## disable RDP
```
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 1
```

## Add firewall authorisation RDP
```
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
```

## disable RDP restricted admin
```
New-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Lsa" -Name DisableRestrictedAdmin -Value 1
```

## enable RDP restricted admin
```
New-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Lsa" -Name DisableRestrictedAdmin -Value 0
```