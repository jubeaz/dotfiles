# smbserver (imp)
% impacket-server, windows, smb, 445

## share smb folder
#plateform/linux #target/serve #port/445 #protocol/smb #cat/ATTACK/LISTEN-SERVE 

A Python implementation of an SMB server. Allows to quickly set up shares and user accounts.

```
sudo smbserver.py -smb2support <shareName|jubeaz> <sharePath>
```

## smb folder with authentication
#plateform/linux #target/serve #port/445 #protocol/smb #cat/ATTACK/LISTEN-SERVE 

```
sudo  smbserver.py  -smb2support -username <username> -password <password> <shareName|jubeaz> <sharePath>
```
