# cmd.exe
% windows, users, groups

#plateform/windows #target/local #cat/RECON/USER

## user - whoami
```
whoami /all
```

## user - logged users (query)
```
query user
```
## user - logged users (qwinsta)
```
qwinsta
```

## user - logged users remotly
#target/remote
```
qwinsta /server:<computer-name>
```

## user - list local users
WARNING will not list account with a $ use powershell
```
net user
```

## user - add local user
```
net user <name|jubeaz> <password|Zaebuj12345+-> /add 
```


## user - add domain user
```
net user <name|jubeaz> <password|Zaebuj12345+-> /add /domain
```

## user - reset password (reset domain)
```
net user  <user> <new_password|P@ssw0rd123> /domain
```



