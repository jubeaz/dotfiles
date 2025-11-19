# ldeep

#plateform/linux  #target/remote  #protocol/ldap  #port/639 #port/389 #cat/RECON


## add realm
```bash
d_fqdn=<domain_fqdn>; echo "        ${d_fqdn^^} = { kdc = <dc_fqdn> }" | sudo tee -a /etc/krb5.conf 
```


## ldap - auth password
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn> -t simple -u <user> -p <password> all <domain_netbios>
```

## ldap - auth ntlm
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn> -t ntlm -u <user> -H :<nt_hash> all <domain_netbios>
```

## ldap - auth kerberos
```bash
KRB5CCNAME=<ccache> ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn>  -k  all <domain_netbios>
```

## ldap - auth anonymous
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn>  -a  all <domain_netbios>
```

## ldap - auth pfx certif 
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn>  --pfx-file <pfx> all <domain_netbios>
```

## ldap - auth pem certif 
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn>  --cert-pem <cert> --key-pem <key> all <domain_netbios>
```
