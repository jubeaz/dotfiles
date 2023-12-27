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
# firewall - open port (Advirewall)
#plateform/windows #target/local #cat/DEFENSE-EVASION
```cmd
netsh advfirewall firewall add rule name="TCP Port <port>" dir=in action=allow protocol=TCP localport=<port>
```
