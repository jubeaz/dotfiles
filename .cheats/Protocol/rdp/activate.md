# windows

% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/POSTEXPLOIT 


## enable RDP 
```
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
```

## disable RDP
```
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
```

## enable RDP restricted admin
```
reg.exe add HKLM\System\CurrentControlSet\Control\Lsa /t REG_DWORD /v DisableRestrictedAdmin /d 0x0 /f
```

## disable RDP restricted admin
```
reg.exe add HKLM\System\CurrentControlSet\Control\Lsa /t REG_DWORD /v DisableRestrictedAdmin /d 0x1 /f
```

## start RDP server
```
sc.exe config TermService start= auto
net.exe start Termservice
```

## Add firewall authorisation RDP
```
netsh.exe advfirewall firewall add rule name="Remote Desktop - User Mode (TCP-In)" dir=in action=allow program="%%SystemRoot%%\system32\svchost.exe" service="TermService" description="Inbound rule for the Remote Desktop service to allow RDP traffic. [TCP 3389] added by LogicDaemon's script" enable=yes profile=private,domain localport=3389 protocol=tcp
```

## firewall open port RDP
```
netsh firewall add portopening TCP 3389 "Remote Desktop"
```

# pwsh
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/POSTEXPLOIT  #tag/powershell 

## enable RDP
```powershell
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -name "fDenyTSConnections" -value 0
```

## enable RDP NLA
```powershell
Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name "UserAuthentication" -Value 1
```


## Set RDP SecurityLayer 
0 Use this setting if you are working in an isolated environment.
1 default value.
2 TLS.
```powershell
Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name "SecurityLayer" -Value <value|0>
```

## disable RDP
```
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -name "fDenyTSConnections" -value 1
```

## start RDP server
```
Set-Service -Name TermService -StartupType Automatic
Start-Service -Name TermService
```

## Add firewall authorisation RDP
```
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
```

## Add firewall authorisation RDP (2)
```powershell
New-NetFirewallRule -DisplayName "<name|jubeaz_rdp>" -Profile Any -Enabled True -Direction Inbound -Action Allow -RemoteAddress <r_ip|Any> -Protocol <proto|Any> -LocalAddress <l_ip|Any> -LocalPort @('3389')  
```

## disable RDP restricted admin
```
New-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Lsa" -Name DisableRestrictedAdmin -Value 1
```

## enable RDP restricted admin
```
New-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Lsa" -Name DisableRestrictedAdmin -Value 0
```