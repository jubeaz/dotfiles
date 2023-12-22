# msmailprobe
% exchange
#plateform/linux  #target/remote  #protocol/exchange 

## recon
#cat/RECON
```bash
msmailprobe identify -t <fqdn>
```


## user enumeration
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
msmailprobe userenum --onprem -t <fqdn>  -U ./users.txt -o valids.txt
```