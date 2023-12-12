# Arsenal

% arsenal, internal

#plateform/linux #target/local #cat/INTERNAL 

## List global variable
```
>show
```

## Clear all global variable
```
>clear
```

## Set commons global variable
```
>set LHOST=<LHOST> LPORT=<LPORT> RHOST=<RHOST> RPORT=<RPORT>
```

## Set user and password
```
>set user=<user> password=<password>
```

## Set user and hash
```
>set user=<user> nt_hash=<lm_hash> lm_hash=<lm_hash>
```

## Set ip global variable
```
>set ip=<ip>
```

## Set ip range
```
>set ip_range=<ip_range>
```

## Set local ip 
```
>set local_ip=<local_ip>
```

## Set domain 
```
>set domain=<domain> dc_name=<dc_name> dc_ip=<dc_ip> domain_netbios=<domain_netbios> domain_tld=<domain_tld>
```

## Set pivoting 
```
>set socks_port=<socks_port|1080> chisel_port=<chisel_port|8000> chisel_server_ip=<chisel_server_ip|10.10.107.58> 
```

## Set password_wl 
```
>set password_wl=<password_wl|/usr/share/wordlists/passwords/rockyou.txt>
```

## Set ffuf_dir_wl 
```
>set ffuf_dir_wl=<ffuf_dir_wl|/usr/share/seclists/Discovery/Web-Content/directory-list-lowercase-2.3-medium.txt>
```

## Set ffuf_dns_wl 
```
>set ffuf_dns_wl=<ffuf_dns_wl|/usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt>
```

## Set ffuf_param_wl 
```
>set ffuf_param_wl=<ffuf_param_wl|/usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt>
```


## Set wordlist
wordlists (nbline): 
- password
/usr/share/seclists/Passwords/darkweb2017-top1000.txt (999)
/usr/share/wordlists/rockyou.txt (14M)

- Web
/usr/share/seclists/Discovery/Web-Content/common-and-french.txt (4906)
/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt (220K)

```
>set wordlist=<wordlist>
```
## Set custom global variable
```
>set <GLOBALVAR>=<value>
```

## Exit
```
>exit
```

