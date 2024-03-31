# tcpdump

% tcpdump
#plateform/linux  #target/local  #cat/Network 

## ICMP - verify ICMP polling
```bash
sudo tcpdump -i <interface|any> icmp
```

## run - common
```bash
timeout <num>m  tcpdump -i <interface|any> -nn -w <file|jubeaz>.pcap -A  <filter>
```

## run -  for a given amount of time (min)
```bash
tcpdump -i <interface|any> -nn -w <file|jubeaz>.pcap -A  <filter>
```


## cmdline structure
```bash
sudo tcpdump <option> <filter>
```

## options
```bash
-A              Print each packet
-nn             disable dns and port resolution
-c<num>         grab a specific number of packets, then quit
-w <file>.pcap  Write into a file
-l              Make stdout line buffered (| tee data)
```

## filter - host
anything involving the host
```bash
host <ip>
```

## filter - host (multiple)
anything involving the host
```bash
(host <ip_1> or host <ip_2>)  
```

## filter - port 
anything involving the port
```bash
port <port_number>
```

## filter - port (multiple)
anything involving the port
```bash
(port <port_number_1> or port <port_number_2>)
```

## filter - source
```bash
src <ip>
```

## filter - source (multiple)
```bash
(src <ip_1> or src <ip_2>)  
```

## filter - destination
```bash
dst <ip>
```

## filter - destination (multiple)
```bash
(dst <ip_1> or dst <ip_2>)  
```

## filter - complex
```bash
"port <port> and (src <ip_1> or src <ip_2>)"
```
