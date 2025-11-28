# bloodhound-python

% bloodhound-python, Active directory enumeration, https://github.com/fox-it/BloodHound.py
#plateform/linux #target/remote #port/389 #port/631 #cat/AD/RECON


## _url
```
https://github.com/dirkjanm/BloodHound.py
```

## _desc
```

```

## _links
```
https://github.com/dirkjanm/BloodHound.py
```

## _install (bloodhound-ce)
```bash
pipx install git+https://github.com/dirkjanm/BloodHound.py.git@bloodhound-ce
```

## Domain - password
```bash
bloodhound-python -d <domain_fqdn> -u <user> -p '<password>' -c <method|DCOnly> -ns <dc_ip> -gc <dc_fqdn> -v --zip -op <domain_fqdn>
```

## Domain - kerberos
add the DNS to /etc/hosts 
```bash
bloodhound-python -d <domain_fqdn> -u <user> -p '<password>' -c <method|DCOnly> -ns <dc_ip> -gc <dc_fqdn> --kerberos -v --zip -op <domain_fqdn>
```

## collect domain data (alternative)
```bash
bloodhound-python -d <domain_fqdn> -u <user> -p '<password>' -dc <domain_controler> -c <method|DCOnly> -ns <dc_ip> -gc <dc_fqdn> -v --zip -op <domain_fqdn>
```

## Domain - password (proxychains) 
```bash
bloodhound-python -d <domain_fqdn> -u <user> -p '<password>' -c <method|DCOnly> --auth-method <auth_method|ntlm> --dns-tcp -ns <dc_ip> -gc <dc_fqdn> -v --zip -op <domain_fqdn>
```

## Domain - pth (proxychains) 
requiere both lm_hash and nt_hash
```bash
bloodhound-python -d <domain_fqdn> -u <user> --hashes aad3b435b51404eeaad3b435b51404ee:<nt_hash> -c <method|DCOnly> --auth-method <auth_method|ntlm> --dns-tcp -ns <dc_ip> -gc <dc_fqdn> -v --zip -op <domain_fqdn>
```


## Forest - pth (proxychains) 
requiere both lm_hash and nt_hash
```bash
bloodhound-python -d <dst_domain_fqdn> -u <user>@<domain_fqdn> --hashes aad3b435b51404eeaad3b435b51404ee:<nt_hash> -c <method|DCOnly> --auth-method <auth_method|ntlm>  -ns <dc_ip> -gc <dc_fqdn> -v --zip -op <dst_domain_fqdn>
```

## Forest - pth (proxychains) 
requiere both lm_hash and nt_hash
```bash
bloodhound-python -d <dst_domain_fqdn> -u <user>@<domain_fqdn> --hashes aad3b435b51404eeaad3b435b51404ee:<nt_hash> -c <method|DCOnly> --auth-method <auth_method|ntlm> --dns-tcp -ns <dc_ip> -gc <dc_fqdn> -v --zip -op <dst_domain_fqdn>
```


