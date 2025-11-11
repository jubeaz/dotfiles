# nmap

#plateform/linux #target/remote #cat/RECON #tag/scan

## util - list host in a range
```bash
nmap -sL -sn <ip_range>
```

## util - display top HOST-PORTS
```bash
nmap -oX - --top-HOST-PORTS <count|25> 
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
cat $(locate <script_name>.nse) | grep -A 2 usage
```

## SCRIPT - get args
```bash
cat $(locate <script_name>.nse) | grep args
```

## SCRIPT - run
```bash 
nmap -Pn -n -sS -p<port> --script=<script_name> --script-args <script_arg>=<value> <ip> 
```


## SERVICE - vuln
```bash
nmap -Pn -n --script=vul, -sV -p<HOST-PORTS_comma_sep> <ip>
```


= nmap_output_file: nmap-$(date +'%Y-%m-%d-%H-%M-%S')