# pwsh
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY/MISC #tag/powershell 


## security misc - Get language mode
RestrictedLanguage:  disable New-Object, script blocks, variables
ConstrainedLanguage: permits all cmdlets and a subset of PowerShell language elements, but limits the object types that can be used

```powershell
$ExecutionContext.SessionState.LanguageMode
```