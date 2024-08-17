# cmd.exe
% windows, users, groups

#plateform/windows #target/local #cat/RECON/GROUP


## group - list local groups
```
net localgroup 
```

## list domain groups
#cat/RECON/GROUP
```
net group /domain
```

## group - local group members
```
net group <group_name|Administrators>
```

## group - domain group members
#cat/RECON/GROUP
```
net group /domain <domain_group_name>
```


## group - Add user to localgroup (domain explicit)
```
net localgroup '<gname|Administrators>'  <domain_netbios>\<name|jubeaz> /add
```

## group - Add user to localgroup (domain implicit)
```
net localgroup '<gname|Administrators>'  <name|jubeaz> /add
```

## roup - Add user to domain
```
net group '<gname|Domain Admins>'  <domain_netbios>\<name|jubeaz> /add /DOMAIN
```

