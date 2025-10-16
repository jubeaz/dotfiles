# bloodyAD

% windows, Active directory
#plateform/linux #target/remote  #cat/ATTACK/DACL-ABUSE


## _desc
```
```

## _repo
```
```

## _doc
```
https://github.com/CravateRouge/bloodyAD/wiki/Enumeration

```

## _install
```
```

## auth (cred)
```bash
-d <domain_fqn> -u <user> -p <password>
```

## auth (pth)
```bash
-d <domain_fqn> -u <user> -p :<nt_hash>
```

## auth (ptc)
```bash
-d <domain_fqn>  -k [ccache=$(pwd)/<ccache_file>]
```

## auth (kerberos)
```bash
-d <domain_fqn> -u <user> -p <password> -k
```

## auth (cert)
```bash
-c <key_path>:<pem_path>
```

## auth (pfw)
```bash
-k pfx=<pfx_path>
```

## cross-domain actions
```bash
bloodyAD --host <target_dc_fqdn> -d <domain_fqdn> -u <user> -p  -p :<nt_hash>
```
