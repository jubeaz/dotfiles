# windows
% windows, credential access

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS

## add local user
```
net user /add <name|jubeaz> <password|Jubeaz12345!>
```

## Add new user to localgroup
```
net localgroup administrators  <name|jubeaz> /add
```
## change user password
```
net user /domain <user> <new_password|P@ssw0rd123>
```

# powershell
% windows, credential access

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS #tag/powershell 

## add local user
```
New-LocalUser -FullName '<fname|jubeaz>' -Name <name|jubeaz> -Password <password|Jubeaz12345!> ‑Description 'Pwnage account'  
```

## Add new user to localgroup
```
add-LocalGroupMember -Group  '<gname|Administrators>' -member <name|jubeaz> 
```

## add local group
```
New-LocalGroup -Name '<name>' -Description '<description>'
```

## change user password (reset domain)
```
Set-ADAccountPassword -Identity <target_user> -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "<password|Jubeaz12345!>" -Force)
```
