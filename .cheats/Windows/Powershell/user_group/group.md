# pwsh
% windows, users, groups

#plateform/windows #target/local #cat/RECON/GROUP #tag/powershell 

## group - list local groups
```powershell
Get-LocalGroup | ft Name
```

## group - local group members
```powershell
Get-LocalGroupMember <group_name|Administrators> | ft Name, PrincipalSource
```

## group - create local group
```
New-LocalGroup -Name '<name>' -Description '<description>'
```

## group - add to local group
```powershell
Add-LocalGroupMember -Group <group_name|Administrators> -Member <domain_netbios>\<user> -Verbose
```

## group - remove from local group
```powershell
Remove-LocalGroupMember -Group <group_name|Administrators> -Member <domain_netbios>\<user> -Verbose
```