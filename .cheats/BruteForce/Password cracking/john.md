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
