# pwsh
% windows, security, applocker

#plateform/windows #target/local #cat/RECON/SECURITY/APPLOCKER #tag/powershell 

## applocker - policy (xml)
```powershell
Get-AppLockerPolicy -Effective -Xml
```


## applocker - policy
```powershell
Get-AppLockerPolicy -Effective | select -ExpandProperty RuleCollections
```

## applocker - Test binary
```powershell
Get-AppLockerPolicy -Effective | | Test-AppLockerPolicy -Path <path> -User <user>
```