# cmd.exe
% windows, software

#plateform/windows #target/local #cat/RECON/SOFTWARE

## software - List installed (wmic) 
```
wmic product get name
```

## software - List installed (dir 1)
```
dir /a "C:\Program Files"
```

## software - List installed (dir 2)
```
dir /a "C:\Program Files (x86)"
```

## software - List installed (reg)
```
reg query HKEY_LOCAL_MACHINE\SOFTWARE
```