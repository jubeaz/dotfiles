# impacket

## smbclient - connect to smb on the target
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

A generic SMB client that will let you list shares and files, rename, upload and download files and create and delete directories, all using either username and password or username and hashes combination.

-hashes : <LMHASH:NTHASH>
-no-pass -k : kerberos authentication

```
smbclient.py '<domain>/<user>:<password>'@<ip>
```

## AddComputer - add computer
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

```
addcomputer.py -dc-ip <dc_ip> [-method LDAPS] -computer-name <computer_name|jubeaz> -computer-pass <computer_password|Zaebuj12345+->  '<domain>/<user>:<password>'
```

## AddComputer - delete computer
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

```
addcomputer.py -dc-ip <dc_ip> [-method LDAPS] -computer-name <computer_name|jubeaz> -delete  '<domain>/<user>:<password>'
```


## lookupsid - enumerate local users
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  

```
lookupsid.py  '<domain>/<user>:<password>'@<ip>
```


