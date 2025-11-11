# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan

## HOST-PORTS - default
```bash
nmap -Pn -n -T<speed|4> -oA <nmap_output_file> <ip>
```

## HOST-PORTS - default (proxychains)
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> -sT -oA <nmap_output_file> <ip>
```

## HOST-PORTS - unfiltered ports Ack scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```bash
nmap -sA -Pn -n -p- --reason --min-rate=1000 -T5 <ip>
```

## HOST-PORTS - unfiltered ports Syn scan (enum firewall rulesets) 
tcp connect (-sT) - no dns (-n)
```bash
nmap -sS -Pn -n -p- --reason --min-rate=1000 -T5 <ip>
```

## HOST-PORTS - udp
```bash
nmap -sU <ip>
```

## HOST-PORTS - udp full
```bash
nmap -sU -Pn -p- --min-rate=1000 -n -T4 <ip>
```

## HOST-SERVICES - light classic
```bash
nmap -Pn -n -T<speed|4> -sV -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - light classic (proxychains)
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> -sV -sT -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - light x ports
```bash
nmap -Pn -n -T<speed|4> -sV --top-ports <count|100> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - light specific ports
```bash
nmap -Pn -n -T<speed|4> -sV -p<ports_comma_sep> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - light specific ports (proxychains)
```bash
proxychains nmap -Pn -n -T<speed|4> -sV -sT -p<ports_comma_sep> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - light all ports
```bash
IP=<ip> ; PORTS=$(nmap -Pn -n -T4 --min-rate=1000 -p- $IP | grep '^[0-9]' | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//) ; nmap -Pn -n -T4 -sV -p$PORTS -oA <nmap_output_file> --reason $IP
```

## HOST-SERVICES - light all ports (proxychains)
```bash
IP=<ip> ; PORTS=$(proxychains -q nmap -Pn -n -T4 --min-rate=1000 -p- $IP | grep '^[0-9]' | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//) ; proxychains -q nmap -Pn -n -sV -sT -p$PORTS -oA <nmap_output_file> --reason $IP
```

## HOST-SERVICES - heavy classic
```bash
nmap -Pn -n -T<speed|4> -sV --script=<category|default> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - heavy classic (proxychains)
```bash
PROXYCHAINS_CONF_FILE=<path|$PWD/proxy.conf> proxychains -q nmap -Pn -n -T<speed|4> -sV --script=<category|default> -sT -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - heavy x ports
```bash
nmap -Pn -n -T<speed|4> -sV --script=<category|default> --top-ports <count|100> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - heavy specific Hports
```bash
nmap -Pn -n -T<speed|4> -sV --script=<category|default> -p<ports_comma_sep> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - heavy specific ports (proxychains)
```bash
proxychains nmap -Pn -n -T<speed|4> -sV --script=<category|default> -sT -p<ports_comma_sep> -oA <nmap_output_file> <ip>
```

## HOST-SERVICES - heavy all ports
```bash
IP=<ip> ; PORTS=$(nmap -Pn -n -T4 --min-rate=1000 -p- $IP | grep '^[0-9]' | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//) ; nmap -Pn -n -T4 -sV --script=<category|default> -p$PORTS -oA <nmap_output_file> --reason $IP
```

## HOST-SERVICES - heavy all ports (proxychains)
```bash
IP=<ip> ; PORTS=$(proxychains -q nmap -Pn -n -T4 --min-rate=1000 -p- $IP | grep '^[0-9]' | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//) ; proxychains -q nmap -Pn -n -sV --script=<category|default> -sT -p$PORTS -oA <nmap_output_file> --reason $IP
```
