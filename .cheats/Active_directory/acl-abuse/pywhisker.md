# pyWhisker

% acl, shadow credentials, msDs-KeyCredentialLink

## requierements
```
GenericAll, GenericWrite, WriteProperty or Validated-SPN 
DC must have its own certificate and keys (RB-ERROR (16) : KDC_ERR_PADATA_TYPE_NOSUPP)
```

## list all current KeyCredentials ID and creation time
https://github.com/ShutdownRepo/pywhisker

```
pywhisker.py -d <domain> -u <user> -p <password> --target <target_user> --action "list"
```