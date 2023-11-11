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

# cme-auth - user/hash authentication
```
-u '<user>' -H '<nt_hash>'
```

# cme-auth - user/hash authentication (local auth)
```
-u '<user>' -H '<lm_hash>:<nt_hash>' --local-auth
```

# cme-auth - kerberos authentication
```
export KRB5CCNAME=FILE_PATH
--use-kcache or -k
```

# cme-auth - kerberos authentication (kdchost)
```
set KRB5CCNAME=FILE_PATH
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