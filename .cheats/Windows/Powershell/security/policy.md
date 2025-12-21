# pwsh
% windows, security

#plateform/windows #target/local #cat/RECON/SECURITY/MISC #tag/powershell 


# security policy - dump
```powershell
secedit /export /cfg $env:temp\secpol.cfg
```

# security policy - dump
```powershell
Get-Content $env:temp\secpol.cfg | Where-Object { $_ -match '^(Se\w+)\s*=\s*(.+)' } | ForEach-Object { $p=$matches[1]; ($matches[2]-split ',') | ForEach-Object { $s=$_.Trim('*'); try{$n=(New-Object System.Security.Principal.SecurityIdentifier($s)).Translate([System.Security.Principal.NTAccount]).Value}catch{$n=$s}; [PSCustomObject]@{Privilege=$p;Principal=$n} } } | Format-Table -AutoSize
```