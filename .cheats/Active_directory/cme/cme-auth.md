# cme

% cme

# cme-auth - credential authentication
```
-u '<login>' -p '<password>'
```

# cme-auth - credential authentication (local auth)
```
-u '<login>' -p '<password>' --local-auth
```

# cme-auth - credential authentication (- password)
```
-u '<login>' -p='<password>'
```

# cme-auth - login/hash authentication
```
-u '<login>' -H '<nt_hash>'
```

# cme-auth - login/hash authentication (local auth)
```
-u '<login>' -H '<lm_hash>:<nt_hash>' --local-auth
```

# cme-auth - kerberos authentication
```
set KRB5CCNAME=FILE_PATH
--use-kcache
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