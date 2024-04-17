# samrdump.py (imp)

% impacket-smb-msrpc, windows, smb, msrpc

#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 

## desc
```
It lists system user accounts, available resource shares and other sensitive information exported through Security Account Manager Remote interface from the MSRPC suite
```


## dump info from the SAM
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
```
samrdump.py '<domain_fqdn>/<user>:<password>'@<ip>
```