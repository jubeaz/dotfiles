# smbserver.py (imp)
% impacket-server, windows, smb, 445


#plateform/linux #target/serve #port/445 #protocol/smb #cat/ATTACK/LISTEN-SERVE 

## desc
```
A Python implementation of an SMB server. Allows to quickly set up shares and user accounts.
```

## share
```bash
sudo smbserver.py -smb2support <shareName|jubeaz> <sharePath|./>
```

## share with authentication
```bash
sudo  smbserver.py  -smb2support -username <username> -password <password> <shareName|jubeaz> <sharePath|./>
```
