# nxc

% nxc

# nxc-auth - credential authentication
```
-u '<user>' -p '<password>'
```

# nxc-auth - credential authentication (local auth)
```
-u '<user>' -p '<password>' --local-auth
```

# nxc-auth - credential authentication (- password)
```
-u '<user>' -p='<password>'
```

# nxc-auth - pth authentication
```
-u '<user>' -H '<nt_hash>'
```

# nxc-auth - pth authentication (local auth)
```
-u '<user>' -H '<lm_hash>:<nt_hash>' --local-auth
```

# nxc-auth - kerberos authentication (creds)
```
-u '<user>' -p '<password>' --kerberos
```

# nxc-auth - kerberos authentication (pth)
```
-u '<user>' -p '<password>' --kerberos
```

# nxc-auth - kerberos authentication (AES256/AES128)
```
-u '<user>' --aesKey <aes_key>
```

# nxc-auth - kerberos authentication (KRB5CCNAME)
use getTGT or TGS
```
KRB5CCNAME=<ccache>  nxc <proto> <target_fqdn> --use-kcache -d <domain> -u <user>
```

# nxc-auth - kerberos authentication (kdchost)
```
export KRB5CCNAME=<ccache>
--use-kcache -kdcHost <dc_name> 
```

# nxc-auth - Brute Forcing
```
 -u username1 -p password1 password2
 -u username1 username2 -p password1
 -u ~/file_containing_usernames -p ~/file_containing_passwords
 -u ~/file_containing_usernames -H ~/file_containing_ntlm_hashes
```

# nxc-auth - Password Spraying
```
-u ~/file_containing_usernames -H ~/file_containing_ntlm_hashes --no-bruteforce
-u ~/file_containing_usernames -p ~/file_containing_passwords --no-bruteforce
-u ~/file_containing_usernames -H ~/file_containing_ntlm_hashes --no-bruteforce -continue-on-success
-u ~/file_containing_usernames -p ~/file_containing_passwords --no-bruteforce -continue-on-success
```