# hashcat

% password recovery, password cracking

#plateform/linux  #target/local  #cat/CRACKING/PASSWORD 

## hashcat - basic md5 (joomla/wordpress) - wordlist
```
hashcat -a 0 -m 400 hashes <password_wl>
```

## hashcat - basic md5 (joomla/wordpress) - wordlist with rules
```
hashcat -a 0 -m 400 hashes <password_wl> -r /usr/share/doc/hashcat/rules/best64.rule 
```

## hashcat - TGS ticket (after kerberoasting)
```
hashcat -m 13100 -a 0 hashes <password_wl> 
```

## hashcat - LM
```
hashcat -m 3000 -a 0 hashes <password_wl> 
```

## hashcat - NTLM
```
hashcat -m 1000 -a 0 hashes <password_wl> 
```

## hashcat - NTLMv1
```
hashcat -m 5500 -a 0 hashes <password_wl> 
```

## hashcat - NTLMv2
```
hashcat -m 5600 -a 0 hashes <password_wl> 
```


## hashcat - Mscash

cat infile | cut -d ":" -f 2 > outfile

```
hashcat -m 2100 -a 0 hashes <password_wl> 
```

## hashcat - Kerbero 5 AS-REP
```bash
Hashcat -m 18200 -a 0 hashes <password_wl>
```

## hashcat - NTLMv2 - Combination attack (ex:passpass,testtest,passtest,etc)
```
hashcat -m 5600 --force -a 1 hashes <custom_wordlist>
```

## hashcat - generate wordlist using rules
```
cat keywords.txt | hashcat -r <rule_file> --stdout > ./<custom_wordlist>
```


