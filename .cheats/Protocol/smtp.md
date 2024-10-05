# SMTP

% smtp, 25
#plateform/linux  #target/remote  #protocol/smtp #port/25

## smtp user enum
#cat/ATTACK/BRUTEFORCE-SPRAY 
```
smtp-user-enum -M VRFY -U <userlist> -t <ip>
```

## msf - smtp user enum
#cat/ATTACK/BRUTEFORCE-SPRAY 
```
msfconsole -x "use auxiliary/scanner/smtp/smtp_enum; set RHOSTS <ip>; exploit"
```
