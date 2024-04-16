# impacket

% impacket

# impacket-auth - credential authentication
```
<impacket_cmd> <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

# impacket-auth - user/hash authentication
```
<impacket_cmd> -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn>
```

# impacket-auth - kerberos authentication (without /etc/hosts)
the SPN part of a TGS is not encrypted, and Impacket modifies it dynamically when using the different tools.
```
export KRB5CCNAME=<ccache> ;<impacket_cmd> -k -no-pass -dc-ip <dc_ip> -target-ip <ip>  <user>@<target_fqdn>
```

# impacket-auth - kerberos authentication (with /etc/hosts)
the SPN part of a TGS is not encrypted, and Impacket modifies it dynamically when using the different tools.
```
export KRB5CCNAME=<ccache> ; <impacket_cmd> -k -no-pass -dc-ip <dc_ip> <user>@<target_fqdn>
```

# impacket-auth - AES key to use for kerberos authentication
```
<impacket_cmd> -aesKey <key> '<domain_fqdn>/<user>@<target_fqdn>'
```


# impacket-auth - Read keys for SPN from keytab file authentication
```
<impacket_cmd> -keytab <keytab> '<domain_fqdn>/<user>@<target_fqdn>'
```
