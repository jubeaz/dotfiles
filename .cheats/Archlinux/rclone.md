# rclone

% rclone

#plateform/linux  #target/local  #cat/UTILS 

## copy to cloud
```bash
rclone copy <rclone_src_path> gdrive:<rclone_dst_path> 
```
## copy from cloud
```bash
rclone copy gdrive:<rclone_src_path> <rclone_dst_path> 
```


## refresh token
```bash
rclone config reconnect gdrive:
```