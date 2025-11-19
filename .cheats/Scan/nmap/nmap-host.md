# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan

## TCP-PORTS - top
```bash
nmap -Pn -n -T<speed|4> --min-rate=1000 --top-ports <count|1000> --reason -oA reason_tcp_<ip> <ip>
```


## TCP-PORTS - top (proxychains)
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap --stats-every 60s -Pn -n -T<speed|4> --min-rate=1000 -sT --top-ports <count|1000> --reason -oA reason_tcp_<ip> <ip>
```

## TCP-PORTS - specific
```bash
nmap -Pn -n -T<speed|4> --min-rate=1000 -p<ports_comma_sep|22,80,445,88,443,3389,5985> --reason -oA reason_tcp_<ip> <ip>
```

## TCP-PORTS - specific (proxychains)
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap --stats-every 60s -Pn -n -T<speed|4> --min-rate=1000 -sT -p<ports_comma_sep|22,80,445,88,443,3389,5985> --reason -oA reason_tcp_<ip> <ip>
```

## TCP-PORTS - all ports
```bash
nmap -Pn -n -T4 --min-rate=1000 -p- --reason -oA reason_tcp_<ip> <ip>
```

## TCP-PORTS - all ports (proxychains)
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap --stats-every 60s -Pn -n -T<speed|4> --min-rate=1000 -sT -p- --reason -oA reason_tcp_<ip> <ip>
```

## TCP-SERVICES - light
```bash
PORTS=$(cat reason_tcp_<ip>.nmap | grep ' open ' | grep -E '^[0-9]+/tcp' | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//') ; nmap -Pn -n -T<speed|4> -sV -p$PORTS -oA <nmap_output_file> <ip>
```

## TCP-SERVICES - light (proxychains)
```bash
PORTS=$(cat reason_tcp_<ip>.nmap | grep ' open ' | grep -E '^[0-9]+/tcp' | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//') ; PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap --stats-every 60s -Pn -n -T<speed|4> -sV -sT -p$PORTS -oA <nmap_output_file> <ip>
```

## TCP-SERVICES - heavy
```bash
PORTS=$(cat reason_tcp_<ip>.nmap | grep ' open ' | grep -E '^[0-9]+/tcp' | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//') ; nmap -Pn -n -T<speed|4> -sV --script=<category|default> -p$PORTS -oA <nmap_output_file> <ip>
```

## TCP-SERVICES - heavy (proxychains)
```bash
PORTS=$(cat reason_tcp_<ip>.nmap | grep ' open ' | grep -E '^[0-9]+/tcp' | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//') ; PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap --stats-every 60s -Pn -n -T<speed|4> -sV --script=<category|default> -sT -p$PORTS -oA <nmap_output_file> <ip>
```


## UDP-PORTS - udp
```bash
nmap -sU <ip>
```

## UDP-PORTS - udp full
```bash
nmap -sU -Pn -p- --min-rate=1000 -n -T4 <ip>
```

## FIREWALL - unfiltered ports Ack scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```bash
nmap -sA -Pn -n -p- --reason --min-rate=1000 -T5 <ip>
```

## FIREWALL - unfiltered ports Syn scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```bash
nmap -sS -Pn -n -p- --reason --min-rate=1000 -T5 <ip>
```