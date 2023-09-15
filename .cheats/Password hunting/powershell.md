# powershell

#plateform/windows #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

## powershell -  Search content
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_HUNT 

```
Get-ChildItem C:\ -Recurse -Include *.rdp, *.config, *.vnc, *.cred -ErrorAction Ignore | sls "Password","credential","key"
```