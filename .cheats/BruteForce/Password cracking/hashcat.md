# hashcat

% password recovery, password cracking

#plateform/linux #target/local #cat/CRACKING/PASSWORD 


## hash list
```bash
hashcat --example-hashes
```


## device list 
```bash
hashcat -I
```


## benchmark - 
```bash
hashcat -b --backend-devices <hashcat_device_id> -m <hash_mode>
```

## benchmark - opencl device CPU
```bash
hashcat -b --opencl-device-types=1 -m 3200
```

## benchmark - opencl device CPU
```bash
hashcat -b --opencl-device-types=2 -m 3200
```

## benchmark - opencl device CPU
```bash
hashcat -b --backend-devices 2 -m 3200
```


## crack - Crack (opencl CPU)
```bash
hashcat --color-cracked --restore-file-path $(pwd)/sessions/<hash_file>.restore --session <hash_file> --workload <hashcat_workload|4> --potfile-path $(pwd)/pots/ --opencl-device-types=1 -a 0 -m <hashcat_hash_type> <hash_file> <password_wl>
```

## crack - Crack (opencl GPU)
```bash
hashcat --color-cracked --restore-file-path $(pwd)/sessions/<hash_file>.restore --session <hash_file> --workload <hashcat_workload|4> --potfile-path $(pwd)/pots/ --opencl-device-types=2 -a 0 -m <hashcat_hash_type> <hash_file> <password_wl>
```

## crack - Crack (backend device)
```bash
hashcat --color-cracked --restore-file-path $(pwd)/sessions/<hash_file>.restore --session <hash_file> --workload <hashcat_workload|4> --potfile-path $(pwd)/pots/ --backend-devices <hashcat_device_id> -a 0 -m <hashcat_hash_type> <hash_file> <password_wl>
```

## crack - restore
```bash
hashcat --restore --restore-file-path $(pwd)/sessions/<hash_file>.restore --session <hash_file>
```


## hash - basic md5 (joomla/wordpress) - wordlist
```
hashcat -a 0 -m 400 <hash_file> <password_wl>
```

## hash - basic md5 (joomla/wordpress) - wordlist with rules
```
hashcat -a 0 -m 400 <hash_file> <password_wl> -r /usr/share/doc/hashcat/rules/best64.rule 
```

## hash - Kerbero 5 AS-REP
```bash
-m 18200 -a 0
```

## hash - Kerberos TGS (kerberoasting)
```
-m 13100 -a 0
```

## hash - LM
```
-m 3000 -a 0 <hash_file> <password_wl> 
```

## hash - NTLM
```
-m 1000 -a 0 <hash_file> <password_wl> 
```

## hash - NTLMv1
```
-m 5500 -a 0 <hash_file> <password_wl> 
```

## hash - NTLMv2
```
-m 5600 -a 0 <hash_file> <password_wl> 
```

## hash - Mscash
cat infile | cut -d ":" -f 2 > outfile
```
-m 2100 -a 0
```

## hash - PMKID
```
-m 22000 --force
```
