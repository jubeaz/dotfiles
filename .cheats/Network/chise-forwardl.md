# chisel-forward

% chisel

#plateform/linux  #target/remote  #cat/PIVOT 

## server (forward pivot)
```
./chisel server -v -p <chisel_port> --socks5
```
## protected server
```
chisel server -v -p <chisel_port> --socks5 --auth '<chisel_login|jubeaz>:<chisel_password|Jub@z123!>'
```

## client 
```
./chisel client <chisel_server_ip>:<chisel_port> socks
```

## client (protected server)
```
export AUTH='<chisel_login|jubeaz>:<chisel_password|Jub@z123!>' && chisel client <chisel_server_ip>:<chisel_port> socks
```

	




