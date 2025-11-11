# hashcat

% password recovery, password cracking

#plateform/linux  #target/local  #cat/CRACKING/PASSWORD 


## hash list
```bash
hashcat --example-hashes
```


## device list 
```bash
hashcat -I
```

## forcinf opencl device (CPU or GPU)
```bash
hashcat  --opencl-device-types=2
```

## basic md5 (joomla/wordpress) - wordlist
```
hashcat -a 0 -m 400 <hash_file> <password_wl>
```

## basic md5 (joomla/wordpress) - wordlist with rules
```
hashcat -a 0 -m 400 <hash_file> <password_wl> -r /usr/share/doc/hashcat/rules/best64.rule 
```

## TGS ticket (after kerberoasting)
```
hashcat -m 13100 -a 0 <hash_file> <password_wl> 
```

## LM
```
hashcat -m 3000 -a 0 <hash_file> <password_wl> 
```

## NTLM
```
hashcat -m 1000 -a 0 <hash_file> <password_wl> 
```

## NTLMv1
```
hashcat -m 5500 -a 0 <hash_file> <password_wl> 
```

## NTLMv2
```
hashcat -m 5600 -a 0 <hash_file> <password_wl> 
```


## Mscash

cat infile | cut -d ":" -f 2 > outfile

```
hashcat -m 2100 -a 0 <hash_file> <password_wl> 
```

## Kerbero 5 AS-REP
```bash
Hashcat -m 18200 -a 0 <hash_file> <password_wl>
```

## NTLMv2 - Combination attack (ex:passpass,testtest,passtest,etc)
```
hashcat -m 5600 --force -a 1 <hash_file> <custom_wordlist>
```

## generate wordlist using rules
```
cat keywords.txt | hashcat -r <rule_file> --stdout > ./<custom_wordlist>
```

## PMKID
```
hashcat -m 22000 --force <hash_file> <password_wl>
```
