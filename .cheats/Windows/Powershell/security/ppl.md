# pwsh
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY/MISC #tag/powershell 

## PPL - Verify
```powershell
Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa -Name "RunAsPPL"
```

## security misc - Verify application whitelisting
```powershell
Get-ChildItem -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\SrpV2\Exe
```


## security misc - Get language mode
RestrictedLanguage:  disable New-Object, script blocks, variables
ConstrainedLanguage: permits all cmdlets and a subset of PowerShell language elements, but limits the object types that can be used

```powershell
$ExecutionContext.SessionState.LanguageMode
```