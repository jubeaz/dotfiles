# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan

## util - list host in a range
```bash
nmap -sL -sn <ip_range>
```

## util - display top ports
```bash
nmap -oX - --top-ports <count|25> x
```

## HOSTS - hosts alive (ping)
ICMP echo request + TCP SYN packet to port 443 + TCP ACK packet to port 80 + ICMP timestamp request
```bash
nmap -n -sn -T<speed|4> <ip_range>
```

## HOSTS - hosts alive (TCP SYN ping sweep)
```bash
nmap -n -Pn -sn -T<speed|4> -PS<port_omma_sep|22,80,445,88,443> <ip_range>
```

## HOSTS - hosts alive (TCP ACK ping sweep)
```bash
nmap -n -Pn -sn -T<speed|4> -PA<port_omma_sep|22,80,445,88,443> <ip_range>
```

## PORT - light
```bash
sudo nmap -Pn -n  <ip>
```

## PORT - light (proxychains)
```bash
proxychains nmap -sT  -Pn -n --open <ip>
```

## PORT - classic
```bash
sudo nmap -Pn -n --script=<category|default> -sV -oA <nmap_output_file> <ip>
```

## PORT - classic (proxychains)
```bash
proxychains nmap -n -sT -sV -Pn --open  -oA <nmap_output_file> <ip>
```

## PORT - top ports classic 
```bash
sudo nmap -Pn -n --top-ports <count|100> --script=<category|default> -oA <nmap_output_file> -sV <ip>
```


## PORT - classic (target file)
```bash
sudo nmap -Pn -n --script=<category|default> -sV -oA <nmap_output_file> -iL <targets_file>
```

## PORT - classic (low rate)
```bash
sudo nmap --max-rate 100 -sC -sV <ip>
```

## PORT - given ports
```bash
sudo nmap  -Pn -n --script=<category|default> -sV -oA <nmap_output_file> -p<ports_comma_sep> --open <ip>
```

## PORT - given ports (proxychains)
```bash
proxychains  nmap -sT -sV  -Pn -n --script=<category|default> -sV -oA <nmap_output_file> -p<ports_comma_sep> --open <ip>
```

## PORT - full
```bash
IP=<ip>;ports=$(sudo nmap -Pn -p- --min-rate=1000 -n -T4 $IP | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//);
sudo nmap -Pn -n --script=default -sV -p$ports $IP -oA <nmap_output_file> --reason
```

## PORT - full (proxychains)
```bash
IP=<ip>; ports=$(proxychains -q nmap -Pn -p- --min-rate=1000 -n -T4 $IP | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//); proxychains -q nmap -Pn -n --script=default -sV -p$ports $IP -oA <nmap_output_file> --reason
```

## PORT - udp
```bash
sudo nmap -sU <ip>
```

## PORT - udp full
```bash
sudo nmap -sU -Pn -p- --min-rate=1000 -n -T4 <ip>
```

## PORT - unfiltered ports Ack scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```bash
sudo nmap -sA -Pn -n -p- --reason --min-rate=1000 -T5  <ip>
```

## PORT -  unfiltered ports Syn scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```bash
sudo nmap -sS -Pn -n -p- --reason --min-rate=1000 -T5  <ip>
```

## SCRIPT - info
or expression: "afp-* and discovery"
```bash
nmap --script-help "<script_name>"
```

## SCRIPT - list all
```bash
find /usr/share/nmap/ -name *.nse | sort | fzf --preview 'nmap --script-help {}'
```

## SCRIPT - get usage
```bash
cat $(locate <script_name>.nse) | grep -A 2  usage
```

## SCRIPT - get args
```bash
cat $(locate <script_name>.nse) | grep args
```

## SCRIPT - run
```bash 
sudo nmap -Pn -n -sS -p<port>  --script=<script_name> --script-args <script_arg>=<value> <ip>  
```


## SERVICE - vuln
```bash
sudo nmap -Pn -n --script=vul, -sV -p<ports_comma_sep> <ip>
```






= nmap_output_file: nmap-$(date +'%Y-%m-%d-%H-%M-%S')