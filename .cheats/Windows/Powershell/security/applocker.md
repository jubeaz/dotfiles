# powershell
% windows, security, applocker

#plateform/windows #target/local #cat/RECON/SECURITY/APPLOCKER #tag/powershell 

## applocker policy
```powershell
Get-AppLockerPolicy -Effective | select -ExpandProperty RuleCollections
```