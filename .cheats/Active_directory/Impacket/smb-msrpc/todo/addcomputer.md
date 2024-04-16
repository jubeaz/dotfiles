# impacket

## AddComputer - add computer
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

```
addcomputer.py -dc-ip <dc_ip> [-method LDAPS] -computer-name <computer_name|jubeaz> -computer-pass <computer_password|Zaebuj12345+->  <domain_fqdn>/<user>:'<password>'
```

## AddComputer - delete computer
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

```
addcomputer.py -dc-ip <dc_ip> [-method LDAPS] -computer-name <computer_name|jubeaz> -delete  <domain_fqdn>/<user>:'<password>'
```

