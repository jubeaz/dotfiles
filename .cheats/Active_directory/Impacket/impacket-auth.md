# impacket

% impacket

# impacket-auth - credential authentication
```
'<domain>/<user>:<password>@<ip>'
```

# impacket-auth - user/hash authentication
```
-hashes <lm_hash>:<nt_hash> '<domain>/<user>@<ip>'
```

# impacket-auth - kerberos authentication (without /etc/hosts)
the SPN part of a TGS is not encrypted, and Impacket modifies it dynamically when using the different tools.
```
export KRB5CCNAME=<ccache> ; -k -no-pass -dc-ip <dc_ip> -target-ip <ip> -no-pass -k <target_name>
```

# impacket-auth - kerberos authentication (with /etc/hosts)
the SPN part of a TGS is not encrypted, and Impacket modifies it dynamically when using the different tools.
```
export KRB5CCNAME=<ccache> ; -k -no-pass -dc-ip <dc_ip> -no-pass -k <target_name>
```

# impacket-auth - AES key to use for kerberos authentication
```
-aesKey <key> '<domain>/<user>@<ip>'
```


# impacket-auth - Read keys for SPN from keytab file authentication
```
-keytab <keytab> '<domain>/<user>@<ip>'
```
