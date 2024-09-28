# ntlmscan

#plateform/linux  #target/remote  #cat/RECON

## _url
```
https://github.com/nyxgeek/ntlmscan
```

## _desc
```
Perform various checks on predefined endpoints from the default paths.dic wordlist
```

## _links
```
https://github.com/busterb/msmailprobe
```

## additional dict (OWA-Attack.txt)
```
https://raw.githubusercontent.com/danTaler/WordLists/master/OWA-Attack.txt
```

## scan
https://raw.githubusercontent.com/danTaler/WordLists/master/OWA-Attack.txt
```bash
python ./ntlmscan.py --host <ip> --dictionary OWA-Attack.txt --nmap
```