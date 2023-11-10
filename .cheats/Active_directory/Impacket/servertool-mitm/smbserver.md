# smbserver (imp)
% impacket-server, windows, smb, 445

## share smb folder
#plateform/linux #target/serve #port/445 #protocol/smb #cat/ATTACK/LISTEN-SERVE 

A Python implementation of an SMB server. Allows to quickly set up shares and user accounts.

```
smbserver.py <shareName|jubeaz> <sharePath>
```

## smb folder with authentication
#plateform/linux #target/serve #port/445 #protocol/smb #cat/ATTACK/LISTEN-SERVE 

```
smbserver.py -username <username> -password <password> <shareName|jubeaz> <sharePath>
```
