# windows
% windows, defense evasion

## firewall - disable (firewall)
#plateform/windows #target/local #cat/DEFENSE-EVASION

```
netsh firewall set opmode disable
```

## firewall - disable (Advirewall)
#plateform/windows #target/local #cat/DEFENSE-EVASION

```
netsh Advfirewall set allprofiles state off
```
# powershell
% windows, defense evasion

## turn off all available firewall profiles
```powershell
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
```