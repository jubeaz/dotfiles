# GetADUsers.py (imp)

% impacket-other, windows, kerberos, 88

## desc
```
gather data about the domain’s users and their corresponding email addresses. It will also include some extra information about last logon and last password set attributes
```

## GetADUser - gather data about the domain’s users and their corresponding email addresses
#plateform/linux #target/remote  #cat/RECON 
```
GetADUsers.py -all '<domain_fqdn>/<user>:<password>' -dc-ip <dc_ip>
```
