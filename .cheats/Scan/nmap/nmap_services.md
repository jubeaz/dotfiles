# nmap_services

#plateform/linux #target/remote #cat/RECON #tag/scan


#protocol/dns #port/53

## DNS - grab banner
#plateform/linux  #target/remote  #cat/RECON
```bash
nmap -sV -p 53 --script dns-nsid <ip>
```

## DNS - dns tcp
#plateform/linux  #target/remote  #cat/RECON
```bash
nmap -n -sV --script "(*dns* and (default or (discovery and safe))) or dns-random-txid or dns-random-srcport" -p 53 <ip>
``` 

## DNS - dns udp
#plateform/linux  #target/remote  #cat/RECON
```bash
nmap -n -sV -sU --script ""(*dns* and (default or (discovery and safe))) or dns-random-txid or dns-random-srcport" -p 53 <ip>
``` 

## DNS - activedirectory enum
#plateform/linux  #target/remote  #cat/RECON
```bash
nmap --script dns-srv-enum --script-args "dns-srv-enum.domain='<domain_fqdn>'"
```

## DNS - dnssec 
#plateform/linux  #target/remote  #cat/RECON
```bash
nmap -sSU -p53 --script dns-nsec-enum --script-args dns-nsec-enum.domains=<domain_fqdn> <ip>
```

#protocol/snmp #port/161

## SNMP - scan
#cat/RECON
```bash
nmap -sU --open -p 161 -sC -sV <ip>
```

## SNMP - brute
#cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
nmap -sU --open -p 161 --script=snmp-brute <ip> --script-args snmp-brute.communitiesdb=<snmp_community_strings_file>
```

#protocol/ftp #port/21

## FTP - enum anonym
#cat/ATTACK/CONNECT
```bash
nmap -v -p 21 --script=ftp-anon.nse <ip>
```

#protocol/nfs #port/2049

## NFS - showmount
#cat/RECON 
```bash
nmap -sV --script=nfs-showmount <ip>
```

#protocol/vnc #port/5800 #port/5801 #port/5900 #port/5901

## VNC - enum
#cat/RECON 
```bash
nmap -sV --script vnc-info,realvnc-auth-bypass,vnc-title -p <port> <ip>
```

#protocol/telnet #port/23

## Telnet - enum
#cat/RECON 
```bash
nmap -n -sV -Pn --script "*telnet* and safe" -p 23 <ip>
```

#protocol/ldap  #port/639 #port/389


## LDAP - all
#cat/RECON 
```bash
nmap -n -sV --script "ldap* and not brute" -p 389 <ip>
```

#protocol/smtp #port/25

## SMTP - enumeration
#cat/RECON 
```bash
nmap -p25 --script smtp-commands <ip>
```

## SMTP - ntlm information disclosure
#cat/RECON 
```bash
nmap -p25 --script smtp-ntlm-info <ip>
```

## SMTP - user enum
#cat/ATTACK/BRUTEFORCE-SPRAY  
```bash
nmap –script smtp-enum-users.nse <ip>
```


#protocol/x11 #port/6000

## X11 - check anonymous connection
#cat/ATTACK/CONNECT  
```bash
nmap -sV --script x11-access -p <port> <ip>
```

#protocol/pop #port/110 #port/995

## POP3 - infos
#cat/RECON 
```bash
nmap --script "pop3-capabilities or pop3-ntlm-info" -sV -port <port> <ip>
```

#port/88 #protocol/kerberos

## KERBEROS - enum users
#cat/RECON 
```bash
nmap -p 88 --script=krb5-enum-users --script-args="krb5-enum-users.realm='<domain_fqdn>'" <ip>
```

## KERBEROS - enum users (with user list)
#cat/ATTACK/BRUTEFORCE-SPRAY
```bash
nmap -p 88 --script=krb5-enum-users --script-args="krb5-enum-users.realm='<domain_fqdn>',userdb=<users_list_file>" <ip>
```

#port/443 #protocol/exchange

## Exchange - NTLM info
#plateform/linux  #target/remote  #cat/RECON
```bash
sudo nmap -Pn -n -sV  -p443  --script=http-ntlm-info --script-args http-ntlm-info.root=/<path|ews> <ip>
```

## Exchange - auth method
#plateform/linux  #target/remote  #cat/RECON
```bash
sudo nmap -Pn -n -sV  -p443  --script=http-auth --script-args http-auth.path=/<path|ews> <ip>
```

#protocol/mysql  #port/3306
## MYSQL - enumeration
#cat/RECON 
```bash
nmap -sV -p 3306 --script mysql-audit,mysql-databases,mysql-dump-hashes,mysql-empty-password,mysql-enum,mysql-info,mysql-query,mysql-users,mysql-variables,mysql-vuln-cve2012-2122 <ip>
```

#protocol/mssql  #port/1433 

## MSSQL - enum
#cat/RECON
```bash
nmap --script ms-sql-info,ms-sql-empty-password,ms-sql-xp-cmdshell,ms-sql-config,ms-sql-ntlm-info,ms-sql-tables,ms-sql-hasdbaccess,ms-sql-dac,ms-sql-dump-hashes --script-args mssql.instance-port=1433,mssql.username=sa,mssql.password=,mssql.instance-name=MSSQLSERVER -sV -p 1433 <ip>
```


#port/445 #protocol/smb

## SMB - signing disabled
```bash
sudo nmap -Pn -sS -T4 --open --script smb-security-mode -p445 <ip>
```