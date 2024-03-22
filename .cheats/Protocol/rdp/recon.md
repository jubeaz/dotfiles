# windows

% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/POSTEXPLOIT 

## RDP service status
```
sc.exe query Termservice
```

## RDP status
```
reg.exe query "HKEY_LOCAL_MACHINE\SYSTEM\CurentControlSet\Control\Terminal Server"
```

## RDP NLA status
```powershell
reg.exe query "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
```

## RDP restricted admin status
```
reg add HKLM\System\CurrentControlSet\Control\Lsa /t REG_DWORD /v DisableRestrictedAdmin /d 0x0 /f
```

## firewall open port RDP
```
netsh firewall add portopening TCP 3389 "Remote Desktop"
```

# pwsh
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/POSTEXPLOIT  #tag/powershell 

## RDP service status
```powershell
Get-Service Termservice |fl *
```

## RDP status
```powershell
Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -name "fDenyTSConnections"
```

## RDP NLA status
```powershell
Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name "UserAuthentication"
```

## RDP SecurityLayer status
```powershell
Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name "SecurityLayer"
```

## RDP restricted admin status
```powershell
Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Lsa" -Name DisableRestrictedAdmin
```

## RDP firewall status
```powershell
Get-NetFirewallPortFilter -protocol tcp | Where LocalPort -eq 3389 | Get-NetFirewallrule 
```
## RDP get listeing port
```
get-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\'-name portnumber
```

## RDP get winstation
```powershell
get-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\' -name fEnableWinStation
```