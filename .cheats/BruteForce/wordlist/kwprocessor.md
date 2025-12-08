# kwprocessor
% wordlist, bruteforce, keyboard walk

#plateform/linux #target/local #cat/UTIL/WORDLIST
## _desc
```
Parse Kerberos authentication packets (AS-REQ, AS-REP and TGS-REP) from .pcap files and generate password-cracking-compatible hashes for security testing
```

## _repo
```
https://github.com/hashcat/kwprocessor.git
```

## _doc
```
```

## _install
```
git clone https://github.com/hashcat/kwprocessor.git && cd kwprocessor && make
```


## keywalk gen
```bash
kwp -s 1 basechars/full.base keymaps/en-us.keymap routes/2-to-32-max-5-direction-changes.route >  <file.txt>
```
