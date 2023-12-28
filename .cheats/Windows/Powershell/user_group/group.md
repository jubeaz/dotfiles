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

## group - add user to localgroup
```
add-LocalGroupMember -Group  '<gname|Administrators>' -member <name|jubeaz> 
```

## group - create local group
```
New-LocalGroup -Name '<name>' -Description '<description>'
```