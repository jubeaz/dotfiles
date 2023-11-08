# gobuster

% fuzzer, fuzz, gobuster

#plateform/linux #target/remote #cat/ATTACK/FUZZ
## gobuster scan classic
```
gobuster dir -u <url> -w <ffuf_dir_wl>
```

## gobuster scan pentest classic fuzz
```
gobuster dir -u <url> -w <ffuf_dir_wl> -x json,html,php,txt,xml,md
```

## gobuster scan high rate
```
gobuster dir -u <url> -w <ffuf_dir_wl> -t 30
```

## gobuster scan with adding extension
```
gobuster dir -u <url> -w <ffuf_dir_wl> -x json,html,php,txt
```

# wfuzz

% fuzzer, fuzz, wfuzz
#plateform/linux #target/remote #cat/ATTACK/FUZZ
## wfuzz with number on url ( url : http://site/ )
```
wfuzz -z range,1-1000 -u <url>FUZZ
```

## wfuzz with wordlist on url ( url : http://site/ )
```
wfuzz -z file,<file> -u <url>FUZZ
```

## wfuzz on post parameter
```
wfuzz -z file,<file> -X post -u <url> -d 'FUZZ=1'
```

# Dirb

% fuzzer, fuzz, dirb
#plateform/linux #target/remote #cat/ATTACK/FUZZ
## dirb commons
```
dirb <url> -w /usr/share/wordlists/dirb/common.txt
```


# nikto

% fuzzer, fuzz, nikto
#plateform/linux #target/remote #cat/ATTACK/FUZZ
## nikto - first vuln scan
```
nikto -C all -h <url>
```

