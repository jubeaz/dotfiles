# pwsh
% windows, security, applocker

#plateform/windows #target/local #cat/RECON/SECURITY/APPLOCKER #tag/powershell 

## applocker - policy (xml)
```powershell
Get-AppLockerPolicy -Effective -Xml
```

## applock - policy (registry)
```powershell
Get-ChildItem -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\SrpV2\Exe
```

## applocker - policy
```powershell
Get-AppLockerPolicy -Effective | select -ExpandProperty RuleCollections
```

## applocker - Test binary
```powershell
Get-AppLockerPolicy -Effective | | Test-AppLockerPolicy -Path <path> -User <user>
```