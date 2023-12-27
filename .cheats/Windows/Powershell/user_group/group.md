# powershell
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
