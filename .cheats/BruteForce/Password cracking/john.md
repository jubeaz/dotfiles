# john the ripper

% password recovery, password cracking

#plateform/linux  #target/local  #cat/CRACKING/PASSWORD 


## Dynamic
https://github.com/pmittaldev/john-the-ripper/blob/master/doc/DYNAMIC
` $dynamic_82$067f746faca44f170c6cd9d7c4bdac6bc342c608687733f80ff784242b0b0c03$/aACFhikmNopqrRTVz2489`
```
john --wordlist=<password_wl> --format=dynamic='<format|sha256($s.$p)>' hash.txt
```

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