# timedatectl

% timedatectl

#plateform/linux  #target/local  #cat/UTILS 


# sync with DC
```bash
echo -e "[Time]\nNTP=<target>\nFallbackNTP=" | sudo tee /etc/systemd/timesyncd.conf.d/timesyncd.conf && sudo systemctl restart systemd-timesyncd.service
```
# unsync with DC
```bash
sudo rm /etc/systemd/timesyncd.conf.d/timesyncd.conf && sudo systemctl restart systemd-timesyncd.service
```

# faketime
```bash
faketime "$(ldapsearch -LLL -x -H ldap://<dc_ip> -b '' -s base '(objectclass=*)' | grep currentTime | awk '{print $2}' | sed 's/\.0Z//'| date '+%Y-%m-%d %H:%M:%S')
```

# View non default config
```bash
systemd-analyze cat-config systemd/timesyncd.conf --tldr
```

# view config
```bash
timedatectl show-timesync --all
```

# check status
```bash
timedatectl status && timedatectl timesync-status
``` 

# check logs
```bash
sudo journalctl -u systemd-timesyncd -f
```