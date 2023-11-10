# impacket

% impacket

# impacket-auth - credential authentication
```
'<domain>/<user>:<password>@<ip>'
```

# impacket-auth - user/hash authentication
```
-hashes <lm>:<nt> '<domain>/<user>@<ip>'
```

# impacket-auth - kerberos authentication
```
export KRB5CCNAME=FILE_PATH
-k -no-pass '<domain>/<user>@<ip>'
```

# impacket-auth - AES key to use for kerberos authentication
```
-aesKey <key> '<domain>/<user>@<ip>'
```


# impacket-auth - Read keys for SPN from keytab file authentication
```
-keytab <keytab> '<domain>/<user>@<ip>'
```
