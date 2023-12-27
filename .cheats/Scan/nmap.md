# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan

## util - list host in a range
```
nmap -sL -sn <ip_range>
```

## util - display top ports
```
nmap -oX - --top-ports <count|25> x
```

## host scan - hosts alive
ICMP echo request + TCP SYN packet to port 443 + TCP ACK packet to port 80 + ICMP timestamp request
```
nmap -n -sn -T<speed|4> <ip_range>
```

## host scan - hosts alive (TCP SYN Ping)
```
nmap -n -sn -T<speed|4> -PS<port_omma_sep|22,80,445,88,443,88> <ip_range>
```

## host scan - hosts alive (TCP ACK Ping)
```
nmap -n -sn -T<speed|4> -PA<port_omma_sep|22,80,445,88,443,88> <ip_range>
```

## port scan - light scan
```
sudo nmap -Pn -n  <ip>
```

## port scan - classic scan
```
sudo nmap -Pn -n --script=<category|default> -sV -oA <nmap_output_file> <ip>
```

## port scan - top ports classic scan 
```
sudo nmap -Pn -n --top-ports <count|100> --script=<category|default> -oA <nmap_output_file> -sV <ip>
```


## port scan - classic scan (target file)
```
sudo nmap -Pn -n --script=<category|default> -sV -oA <nmap_output_file> -iL <targets_file>
```

## port scan - host with a given ports
```
sudo nmap  -Pn -n --script=<category|default> -sV -oA <nmap_output_file> -p<ports_comma_sep> --open <ip>
```

## port scan - FULL
```
IP=<ip>;
ports=$(sudo nmap -Pn -p- --min-rate=1000 -n -T4 $IP | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//);
sudo nmap -Pn -n --script=default -sV -p$ports $IP -oA <nmap_output_file> --reason
```

## port scan - udp scan
```
sudo nmap -sU <ip>
```

## port scan - udp list all open 
```
sudo nmap -sU -Pn -p- --min-rate=1000 -n -T4 <ip>
```

## port scan - low rate Classic
```
sudo nmap --max-rate 100 -sC -sV <ip>
```

## service scan - vuln scan
```
sudo nmap -Pn -n --script=vul, -sV -p<ports_comma_sep> <ip>
```


## script - script info
or expression: "afp-* and discovery"
```bash
nmap --script-help "<script_name>"
```

## script - list all available scripts
```bash
locate nse | grep scripts
```

## script - get usage of a script
```bash
cat $(locate <script_name>.nse) | grep -A 2  usage
```

## script - get args of a script
```bash
cat $(locate <script_name>.nse) | grep args
```

## script - run script
```bash 
sudo nmap -Pn -n -sS -p<port>  --script=<script_name> --script-args <script_arg>=<value> <ip>  
```


## nmap - SMB signing disabled
```
sudo nmap -Pn -sS -T4 --open --script smb-security-mode -p445 <ip>
```

## nmap behind proxy 
tcp connect (-sT) - no dns (-n)
```
proxychains nmap -n -sT -sV -Pn --open -oA <output_file> -iL <targets_file>
```


## nmap list of ports behind proxy 
tcp connect (-sT) - no dns (-n)
```
proxychains nmap -n -sT -sV -Pn -p<ports_comma_sep> --open  <ip>
```

## nmap all unfiltered ports Ack scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```
sudo nmap -sA -Pn -n -p- --reason --min-rate=1000 -T5  <ip>
```


## nmap all unfiltered ports Syn scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```
sudo nmap -sS -Pn -n -p- --reason --min-rate=1000 -T5  <ip>
```




= nmap_output_file: nmap-$(date +'%Y-%m-%d-%H-%M-%S')