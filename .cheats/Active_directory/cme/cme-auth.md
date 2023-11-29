# cme

% cme

# cme-auth - credential authentication
```
-u '<user>' -p '<password>'
```

# cme-auth - credential authentication (local auth)
```
-u '<user>' -p '<password>' --local-auth
```

# cme-auth - credential authentication (- password)
```
-u '<user>' -p='<password>'
```

# cme-auth - pth authentication
```
-u '<user>' -H '<nt_hash>'
```

# cme-auth - pth authentication (local auth)
```
-u '<user>' -H '<lm_hash>:<nt_hash>' --local-auth
```

# cme-auth - kerberos authentication (creds)
```
-u '<user>' -p '<password>' --kerberos
```

# cme-auth - kerberos authentication (pth)
```
-u '<user>' -p '<password>' --kerberos
```

# cme-auth - kerberos authentication (AES256/AES128)
```
-u '<user>' --aesKey <aes_key>
```

# cme-auth - kerberos authentication (KRB5CCNAME)
use getTGT
```
export KRB5CCNAME=FILE_PATH
--use-kcache
```

# cme-auth - kerberos authentication (kdchost)
```
export KRB5CCNAME=FILE_PATH
--use-kcache -kdcHost <dc_name> 
```

# cme-auth - Brute Forcing
```
 -u username1 -p password1 password2
 -u username1 username2 -p password1
 -u ~/file_containing_usernames -p ~/file_containing_passwords
 -u ~/file_containing_usernames -H ~/file_containing_ntlm_hashes
```

# cme-auth - Password Spraying
```
-u ~/file_containing_usernames -H ~/file_containing_ntlm_hashes --no-bruteforce
-u ~/file_containing_usernames -p ~/file_containing_passwords --no-bruteforce
-u ~/file_containing_usernames -H ~/file_containing_ntlm_hashes --no-bruteforce -continue-on-success
-u ~/file_containing_usernames -p ~/file_containing_passwords --no-bruteforce -continue-on-success
```