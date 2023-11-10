# impacket

% impacket

# impacket-auth - credential authentication
```
'<domain>/<login>:<password>@<ip>'
```

# impacket-auth - login/hash authentication
```
-hashes <lm>:<nt> '<domain>/<login>@<ip>'
```

# impacket-auth - kerberos authentication
```
export KRB5CCNAME=FILE_PATH
-k -no-pass '<domain>/<login>@<ip>'
```

# impacket-auth - AES key to use for kerberos authentication
```
-aesKey <key> '<domain>/<login>@<ip>'
```


# impacket-auth - Read keys for SPN from keytab file authentication
```
-keytab <keytab> '<domain>/<login>@<ip>'
```
