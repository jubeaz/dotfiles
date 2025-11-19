# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan


## NET-SWEEP - default (ICMP echo, SYN/443, ACK/80, ICMP timestamp )
```bash
nmap -n -sn -T<speed|4> -oA net_sweep_<nmap_output_file> <network_ip>/<cird> 
```

## NET-SWEEP - ICMP echo
```bash
nmap -n -sn -PE -oA net_sweep_<nmap_output_file> <network_ip>/<cird> 
```

## NET-SWEEP - specific ports
```bash
nmap -n -sn -T<speed|4> -PE -PS<ports_comma_sep|22,80,445,88,443,3389,5985> -oA net_sweep_<nmap_output_file> <network_ip>/<cird> 
```

## NET-REACH - top ports
```bash
nmap -Pn -n -T<speed|4> --min-rate=1000 --top-ports <count|25> --open -oA net_reach_<network_ip>-<cird> <network_ip>/<cird>
```

## NET-REACH - top ports (proxychains) 
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> --min-rate=1000 -sT --top-ports <count|25> --open -oA net_reach_<network_ip>-<cird> <network_ip>/<cird>
```

## NET-REACH - specific ports
```bash
nmap -Pn -n -T<speed|4> --min-rate=1000 -p<ports_comma_sep|22,80,445,88,443,3389,5985> --open net_reach_<network_ip>-<cird> --open -oA net_reach_<network_ip>-<cird> <network_ip>/<cird>
```

## NET-REACH - specific ports (proxychains) 
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> --min-rate=1000 -sT -p<ports_comma_sep|22,80,445,88,443,3389,5985> --open -oA net_reach_<network_ip>-<cird> <network_ip>/<cird>
```


## NET-TCP-PORTS - top
```bash
IPS=$(cat net_reach_<network_ip>_<cird>.gnmap | grep 'Status: Up' | cut -d' ' -f2); for IP in $IPS; do echo "======> $IP"; nmap --stats-every 60s -Pn -n -T<speed|4> --min-rate=1000 --top-ports <count|1000> --reason -oA reason_tcp_$IP $IP ;done
```

## TCP-TCP-PORTS - top (proxychains)
```bash
IPS=$(cat net_reach_<network_ip>_<cird>.gnmap | grep 'Status: Up' | cut -d' ' -f2); for IP in $IPS; do echo "======> $IP"; PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap --stats-every 60s -Pn -n -T<speed|4> --min-rate=1000 -sT --top-ports <count|1000> --reason -oA reason_tcp_$IP $IP ;done
```