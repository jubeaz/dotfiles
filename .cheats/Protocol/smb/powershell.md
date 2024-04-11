# pwsh
% windows, network

#plateform/windows #target/local #cat/POSTEXPLOIT #tag/powershell 

## smb - create share
```powershell
New-SmbShare -Name "<share_name|temp>" -Path "<path|C:\Partage\>" -FullAccess "<domain_fqdn>\<user>" 
```

## smb - remove share
```powershell
Remove-SmbShare -Name  "<share_name|temp>"  
```

## smb - add share right
```powershell
Grant-SmbShareAccess -Name "<share_name|temp>" -AccountName "<user>" -AccessRight <right|Full> -Force
```

## smb - remove share right
```powershell
Revoke-SmbShareAccess -Name "<share_name|temp>" -AccountName "<user>" -Force
```

## smb - get configuration
```powershell
Get-SmbServerConfiguration
```
