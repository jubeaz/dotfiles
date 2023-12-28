# pwsh
% windows, security, UAC

#plateform/windows #target/local #cat/RECON/SECURITY/UAC #tag/powershell 

## UAC - show status
0 : inactive
1 : active
```powershell
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA
```

## UAC - show Level
0: UAC won't prompt (like disabled)
1: ask for username and password to execute the binary with high rights (on Secure Desktop)
2: Always notify me ask for confirmation to the administrator when he tries to execute something with high privileges (on Secure Desktop)
3: like 1 but not necessary on Secure Desktop
4: like 2 but not necessary on Secure Desktop
5: ask the administrator to confirm to run non Windows binaries with high privileges
```powershell
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin
```

## UAC - show remote administration tasks
0 (default): built-in Administrator account can do remote administration tasks
1: built-in account Administrator cannot do remote administration tasks
```powershell
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name LocalAccountTokenFilterPolicy
```