# windows
% windows, Active Directory

# get current DC
```
echo %logonserver%
```

#plateform/windows #target/local #cat/RECON/AD

# powershell
% windows, Active Directory

#plateform/windows #target/local #cat/RECON/AD #tag/powershell 


## system - get user password policy
```
Get-ADUserResultantPasswordPolicy -Identity <user>
```

## system - get default password policy
```
Get-ADDefaultDomainPasswordPolicy
```