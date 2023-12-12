# enum4linux-ng

% smb, samba

#plateform/linux  #target/remote  #port/445 #protocol/smb #cat/RECON 

## enum4linux-ng - all except dictionary based share name listing (default)
```
enum4linux-ng -A -oA <file> <ip>
```

## enum4linux-ng - verbose
```
enum4linux-ng -v <ip>
```

## enum4linux-ng - null access
```
enum4linux-ng -u "" -p "" -oA <file> <ip>
```

## enum4linux-ng - guest access
```
enum4linux-ng -u "guest" -p "" -oA <file> <ip>
```

## enum4linux-ng - with authentication
```
enum4linux-ng -u <user> -p <password> -oA <file> <ip>
```

## enum4linux-ng - pth
```
enum4linux-ng -u <user> -H <nt_hash> -oA <file> <ip>
```

## enum4linux-ng - list Users
```
enum4linux-ng -U <ip> |grep 'users:'
```
