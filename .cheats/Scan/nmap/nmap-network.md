# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan


## NET-SWEEP - default (ICMP echo, SYN/443, ACK/80, ICMP timestamp )
```bash
nmap -n -sn -T<speed|4> <ip_range>
```

## NET-SWEEP - ICMP echo
```bash
nmap -n -sn -PE <ip_range>
```

## NET-SWEEP - SYN
```bash
nmap -Pn -n -sn -T<speed|4> -PS<ports_comma_sep|22,80,445,88,443,3389,5985> -oA <nmap_output_file> <ip_range> 
```

## NET-SWEEP - proxychains 
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> -sT -p<ports_comma_sep|22,80,445,88,443,3389,5985> --open -oA <nmap_output_file> <ip_range> 
```

## NET-ALIVE - x ports
```bash
nmap -Pn -n -T<speed|4> --top-ports <count|25> --open -oA <nmap_output_file> <ip_range>
```

## NET-ALIVE - specific ports
```bash
nmap -Pn -n -T<speed|4> -p<ports_comma_sep|22,80,445,88,443,3389,5985> --open <ip_range> 
```

## NET-ALIVE - specific ports (proxychains) 
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> -sT -p<ports_comma_sep|22,80,445,88,443,3389,5985> --open -oA <nmap_output_file> <ip_range> 
```
