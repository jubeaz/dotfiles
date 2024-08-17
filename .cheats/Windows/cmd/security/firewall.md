# cmd.exe
% windows, security, firewall

#plateform/windows #target/local #cat/RECON/SECURITY/FIREWALL 

## firewall - state
```
netsh firewall show state
```

## firewall - show profile 
allprofiles
currentprofile
```cmd
Netsh Advfirewall show <profile|currentprofile>
```

## firewall - dump
```
netsh advfirewall firewall dump
```

## firewall - show rules
```cmd
netsh advfirewall firewall show rule name=all profile=<fw_profile|Domain>
```


## firewall - turn off firewall (Advirewall)
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```cmd
netsh advfirewall set allprofiles state off
```

## firewall - turn off firewall (firewall)
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```cmd
netsh firewall set opmode disable
```

## firewall - turn on firewall (Advirewall)
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```cmd
NetSh Advfirewall set allprofiles state on
```

# firewall - open port (Advirewall)
#cat/DEFENSE-EVASION/SECURITY/DEFENDER
```cmd
netsh advfirewall firewall add rule name="TCP Port <port>" dir=in action=allow protocol=TCP localport=<port>
```
