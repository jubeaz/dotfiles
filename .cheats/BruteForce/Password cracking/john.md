# john the ripper

% password recovery, password cracking

#plateform/linux  #target/local  #cat/CRACKING/PASSWORD 

## john LM
```
john --wordlist=<password_wl> --format=lm hash.txt
```

## john NTLM
```
john --wordlist=<password_wl> --format=nt hash.txt
```

## john NTLMv1
```
john --wordlist=<password_wl> --format=netntlm hash.txt
```

## john NTLMv2
```
john --wordlist=<password_wl> --format=netntlmv2 hash.txt
```

## john ssh convert key 
```
python /usr/share/john/ssh2john.py <ssh_key> > <ssh_hash|sshkey.hash>
```

## john ssh
```
john --wordlist=<password_wl> <ssh_hash|sshkey.hash>
```


## john - Mscash

cat infile | cut -d ":" -f 2 > outfile

```
 john --wordlist=<password_wl> --format=mscash2 <hash.txt>
```


## mutation - toggle (mix upper/lower)
```
john --wordlist=<in_dict> --rule=NT -stdout  > <out_dict>
```

## mutation - l33t 
```
john --wordlist=<in_dict> --rule=l33t -stdout  > <out_dict>
```

## mutation - KoreLogicRulesL33t
https://contest-2010.korelogic.com/rules.html
```
john --wordlist=<in_dict> --rule=KoreLogicRulesL33t -stdout  > <out_dict>
```

## confif
```
cat /usr/share/john/john.conf
```