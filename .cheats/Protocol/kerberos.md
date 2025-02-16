 addent -password -p wubeaz@weyland.local -k 1
# KERBEROS

% kerberos, 88
#plateform/linux  #target/remote  #port/88 #protocol/kerberos 


## config
```
[libdefaults]
        # default_realm = ATHENA.MIT.EDU
        rdns=false
[logging]
[realms]
        WEYLAND.LOCAL = {
                kdc = wld01.weyland.local
                kadmin_server = wld01.weyland.local
        }
[domain_realm]
        weyland.local = WEYLAND.LOCAL
        .weyland.local = WEYLAND.LOCAL
```


## config (pass the cert)
```
    [realms]
    INLANEFREIGHT.AD = {
        kdc = dc01.inlanefreight.ad
        pkinit_anchors = FILE:/<path>/ca.pem
        pkinit_eku_checking = kpServerAuth
        pkinit_kdc_hostname = dc01.inlanefreight.ad
        pkinit_identities = FILE:/<path>/cert.pem,/<path>/key.pem
}
```

## keytabfile (ktutil)
```
addent -password -p wubeaz@WEYLAND.LOCAL -k 1 -f
wkt /etc/krb5.keytab
```

## rdp with kerberos
```
xfreerdp /cert-ignore /u:wubeaz /p:jubeaz /v:wld01.weyland.local /dynamic-resolution  /sec:kerberos /sec:nla
```

## test kerberos (get TGT)
```
kinit wubeaz@WEYLAND.LOCAL
```

## kerberos with certificate
```
kinit -V -X X509_user_identity=FILE:admin.cer,admin.key
```