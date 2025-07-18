# SMTP

% smtp, 25
#plateform/linux  #target/remote  #protocol/smtp #port/25

## smtp user enum (VRFY)
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
smtp-user-enum -M VRFY -U <userlist> -D <domain_fqdn> -t <ip> -m 50
```

## smtp user enum (RCPT)
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
smtp-user-enum -M RCPT -U <userlist> -D <domain_fqdn> -t <ip> -m 50
```

## msf - smtp user enum
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
msfconsole -x "use auxiliary/scanner/smtp/smtp_enum; set RHOSTS <ip>; exploit"
```


## swaks - sendmail
```bash
swaks --to <to_email> --from <from_email> --header "Subject: <subject>" --body "<body>" --server <smtp_server_fqdn>
```