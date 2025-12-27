 addent -password -p wubeaz@weyland.local -k 1
# KERBEROS

% kerberos, 88
#plateform/linux  #target/remote  #port/88 #protocol/kerberos 


## config realm (/etc/krb5.conf)
```
[libdefaults]
    #default_tgs_encrypes = aes128-cts-hmac-sha256-128 aes256-cts-hmac-sha384-192 aes256-cts-hmac-sha1-96 aes128-cts-hmac-sha1-96 camellia256-cts-cmac camellia128-cts-cmac
    #default_tkt_enctypes = aes128-cts-hmac-sha256-128 aes256-cts-hmac-sha384-192 aes256-cts-hmac-sha1-96 aes128-cts-hmac-sha1-96 camellia256-cts-cmac camellia128-cts-cmac
    #permitted_enctypes   = aes128-cts-hmac-sha256-128 aes256-cts-hmac-sha384-192 aes256-cts-hmac-sha1-96 aes128-cts-hmac-sha1-96 camellia256-cts-cmac camellia128-cts-cmac
    # default_realm = ATHENA.MIT.EDU
    # https://web.mit.edu/kerberos/krb5-1.12/doc/basic/ccache_def.html
    #default_ccache_name = KEYRING:process:krb_cache
    ccache_type = 4
    rdns=false
    clockskew = 300
    kdc_timesync = 1

[logging]
[realms]
    WEYLAND.LOCAL = {
        kdc = wld01.weyland.local
        kadmin_server = wld01.weyland.local
        kpasswd_server = haas01.haas.local
        default_domain = haas.local
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
        admin_server = haas01.haas.local
        kpasswd_server = haas01.haas.local
        default_domain = haas.local
```


## keytab - create (linux)
```bash
PASSWORD='<password>' ktutil <<EOF
addent -password -p <login>@<realm_name> -k 1 -e aes256-cts-hmac-sha1-96
${PASSWORD}
${PASSWORD}
write_kt /tmp/<login>.keytab
quit
EOF
```

## keytab - create for a linux computer (windows)
DES-CBC-CRC|DES-CBC-MD5|RC4-HMAC-NT|AES256-SHA1|AES128-SHA1|All
KRB5_NT_PRINCIPAL|KRB5_NT_SRV_INST|KRB5_NT_SRV_HST
New-ADComputer -DNSHostName bastion.haas.local -Name bastion
```powershell
ktpass.exe -out C:\temp\<computer_name>.keytab  -princ host/<computer_name>.<domain_name>@<realm_name> -mapUser <omputer_name>$@<realm_name> +rndpass -mapOp set -crypto All -ptype KRB5_NT_SRV_HST +answer
```

## keytab - list content
```bash
klist -k -e <keytab_file>
```

## TGT - get from keytab file
```bash
KRB5_TRACE=/tmp/krbtrace.txt kinit -V -c $(pwd)/<ccache_file> -k -t <keytab_file> <login>@<realm_name>
``` 


## TGT - get from certificate
```
KRB5_TRACE=/tmp/krbtrace.txt kinit -V -X X509_user_identity=FILE:admin.cer,admin.key <login>@<realm_name>
```

## TGT - renew
```bash
KRB5_TRACE=/tmp/krbtrace.txt kinit -V -R
```


## TGS - get
```bash
KRB5CCNAME=$(pwd)/<ccache_file> kvno <service>/<host>@realm_name> --out-cache
```

## Password - change
```bash
env KRB5_TRACE=/dev/stderr  KRB5_CONFIG=/etc/krb5.conf kpasswd  <target_account>@<realm_name>
```

## Password - reset
```bash
env KRB5_TRACE=/dev/stderr  KRB5_CONFIG=/etc/krb5.conf kpasswd-heimdal --admin-principal=<source_account>@<realm_name> <target_account>@<realm_name>
```

## rdp with kerberos
```
xfreerdp /cert-ignore /u:wubeaz /p:jubeaz /v:wld01.weyland.local /dynamic-resolution  /sec:kerberos /sec:nla
```
