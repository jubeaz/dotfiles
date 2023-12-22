# nmap

## Exchange - NTLM info
#plateform/linux  #target/remote  #cat/RECON

```bash
sudo nmap -Pn -n -sV  -p443  --script=http-ntlm-info --script-args http-ntlm-info.root=/<path|ews> <ip>
```

## Exchange - auth method
#plateform/linux  #target/remote  #cat/RECON

```bash
sudo nmap -Pn -n -sV  -p443  --script=http-auth --script-args http-auth.path=/<path|ews> <ip>
```