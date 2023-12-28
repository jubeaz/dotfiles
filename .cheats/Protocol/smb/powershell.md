# windows
% windows, network

#plateform/windows #target/local #cat/POSTEXPLOIT


# pwsh
% windows, network

#plateform/windows #target/local #cat/POSTEXPLOIT #tag/powershell 

## create smb share
```powershell
New-SmbShare -Name "<share_name|temp>" -Path "<path|C:\Partage\>" -FullAccess "<domain>\<user>" 
```

## remove smb share
```powershell
Remove-SmbShare -Name  "<share_name|temp>"  
```

## add smb share right
```powershell
Grant-SmbShareAccess -Name "<share_name|temp>" -AccountName "<user>" -AccessRight <right|Full> -Force
```

## remove smb share right
```powershell
Revoke-SmbShareAccess -Name "<share_name|temp>" -AccountName "<user>" -Force
```

## get smb configuration
```powershell
Get-SmbServerConfiguration
```
