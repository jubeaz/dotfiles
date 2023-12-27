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
net user  <user> <new_password|P@ssw0rd123> /domain
```

