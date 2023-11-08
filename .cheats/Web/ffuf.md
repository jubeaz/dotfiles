
# ffuf

% fuzzer, fuzz, ffuf
#plateform/linux #target/remote #cat/ATTACK/FUZZ
## ffuf fuzz keyword in url
```
ffuf -w <ffuf_dir_wl> -u <url>/FUZZ
```

## ffuf fuzz keyword in url to Burp
```
ffuf -w <ffuf_dir_wl> -u <url>/FUZZ  -replay-proxy http://127.0.0.1:8080
```

## ffuf fuzz keyword in url extension
```
ffuf -w <ffuf_dir_wl> -u <url>/FUZZ -e .<ext1>[,.ext2]
```


## ffuf fuzz keyword in url recursive
```
ffuf -w <ffuf_dir_wl> -u <url>/FUZZ -recursion -recursion-depth <depth|1>
```


## ffuf fuzz Host filter response size
```
ffuf -w <ffuf_dns_wl> -u <url> -H "Host: FUZZ.<domain>" -fs <response_size>
```

## ffuf GET parameter fuzzing
```
ffuf -w <ffuf_param_wl> -u <url>?FUZZ=1 -fs <response_size>
```

## ffuf GET parameter value fuzzing
```
ffuf -w <wordlist> -u <url>?<param>=FUZZ -fs <response_size>
```

## ffuf POST parameter fuzzing and filter response code 401
```
ffuf -w <wordlist> -u <url> -X POST -d "username=admin\&password=FUZZ" -fc 401
```

