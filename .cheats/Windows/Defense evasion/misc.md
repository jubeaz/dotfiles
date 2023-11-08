# obfuscation

% obfuscation

#plateform/windows #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

## obfuscation - b64 -  convert file to powershell base64 
#plateform/linux #target/local #cat/RECON #tag/powershell 

```
iconv -f ASCII -t UTF-16LE <file> | base64 -w 0
```

## obfuscation - b64 -  convert command to powershell base64 
#plateform/linux #target/local #cat/RECON #tag/powershell 

```
echo "iex(command)" | iconv --to-code UTF-16LE | base64 -w 0
```