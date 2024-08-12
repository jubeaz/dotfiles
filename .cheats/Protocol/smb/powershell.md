# pwsh
% windows, network

#plateform/windows #target/local #cat/POSTEXPLOIT #tag/powershell 

## smb - create share
```powershell
New-SmbShare -Name "<share_name|jubeaz>" -Path "<path|C:\jubeaz\>" -FullAccess "<domain_fqdn>\<user>" 
```

## smb - remove share
```powershell
Remove-SmbShare -Name  "<share_name|jubeaz>"  
```

## smb - add share right
```powershell
Grant-SmbShareAccess -Name "<share_name|jubeaz>" -AccountName "<domain_netbios>\<user|Domain Users>" -AccessRight <right|Full> -Force
```

## smb - remove share right
```powershell
Revoke-SmbShareAccess -Name "<share_name|jubeaz>" -AccountName "<user>" -Force
```

## smb - get configuration
```powershell
Get-SmbServerConfiguration
```
