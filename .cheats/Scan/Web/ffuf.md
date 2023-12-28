
# ffuf

% fuzzer, fuzz, ffuf
#plateform/linux #target/remote #cat/ATTACK/FUZZ
## fuzz keyword in url
```
ffuf -t <nb_thread|40> -w <ffuf_dir_wl> -u <url>/FUZZ
```

## fuzz keyword in url to Burp
```
ffuf -t <nb_thread|40> -w <ffuf_dir_wl> -u <url>/FUZZ  -replay-proxy http://127.0.0.1:8080
```

## fuzz keyword in url extension
```
ffuf -t <nb_thread|40> -w <ffuf_dir_wl> -u <url>/FUZZ -e .<ext1>[,.ext2]
```


## fuzz keyword in url recursive
```
ffuf -t <nb_thread|40> -w <ffuf_dir_wl> -u <url>/FUZZ -recursion -recursion-depth <depth|1> -o <ffuf_file|ffuf> -of <csv>
```


## ffuf fuzz Host filter response size
```
ffuf -t <nb_thread|40> -w <ffuf_dns_wl> -u <url> -H "Host: FUZZ.<domain>" -fs <response_size>
```

## ffuf GET parameter fuzzing
```
ffuf -t <nb_thread|40> -w <ffuf_param_wl> -u <url>?FUZZ=1 -fs <response_size>
```

## ffuf GET parameter value fuzzing
```
ffuf -t <nb_thread|40> -w <wordlist> -u <url>?<param>=FUZZ -fs <response_size>
```

## ffuf POST parameter fuzzing and filter response code 401
```
ffuf -t <nb_thread|40> -w <wordlist> -u <url> -X POST -d "username=admin\&password=FUZZ" -fc 401
```

