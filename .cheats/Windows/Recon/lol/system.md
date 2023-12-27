# windows
% windows, systeminfo

#plateform/windows #target/local #cat/RECON/SYSTEM

## get info system
```
systeminfo
```

## get patches and updates
```
wmic qfe list
```

## get patches
```
wmic qfe get Caption,Description,HotFixID,InstalledOn
```

## get password policy
```
net accounts
```


## get hostname
```
hostname
```

## get environment variables
```
set
```

## show mounted disks
```
wmic logicaldisk get caption,description,providername
```

## show recycle bin
```
dir C:\$Recycle.Bin /s /b
```

## get architecture
```
wmic os get osarchitecture || echo %PROCESSOR_ARCHITECTURE%
```

## get system time
```
net time
```

## get system time (remote)
```
net time \\<hostname>
```
