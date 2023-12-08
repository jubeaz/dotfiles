# randomness


## linux - random string (openssl)
#plateform/linux  #target/local  #cat/UTILS
```bash
openssl rand -base64 <size> | tr -dc 'a-zA-Z0-9' 
``` 

## powershell - random string (openssl)
#plateform/windows  #target/local  #cat/UTILS

```powershell
join ((48..57) + (97..122) | Get-Random -Count <size> | % {[char]$_})
```