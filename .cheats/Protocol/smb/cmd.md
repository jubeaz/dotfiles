# cmd.exe
% windows, network

#plateform/windows #target/local #cat/POSTEXPLOIT

## smb - list of computer
```
net view
```

## smb - list of computer shares on the domain
```
net view /all /domain <domain>
```

## smb - list share of a computer
```
net view \\<ip> \ALL
```

## smb - mount share locally
```
net use x: \\<ip>\<share_name>
```

## smb - check current share
```
net share
```
