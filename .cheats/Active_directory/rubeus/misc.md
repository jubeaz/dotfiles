# rubeus

% ad, windows, rubeus

#plateform/windows #target/local 

## Misc - Create new session (Requires Elevation)
#cat/UTILS 
```powershell
.\Rubeus.exe createnetonly /program:c:\windows\system32\cmd.exe /show
```

## Misc - current session info
#cat/UTILS 
```powershell
.\Rubeus.exe logonsession
```

## Misc - current luid
#cat/UTILS 
```powershell
.\Rubeus.exe currentluid
```
