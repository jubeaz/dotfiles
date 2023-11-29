sed -i 's/SMB = Off/SMB = On/g' /usr/share/responder/Responder.conf && cat /usr/share/responder/Responder.conf | grep --color=never 'SMB ='

# proxychains

% proxychains, tunneling

## turn smb off
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/^socks5  127.0.0.1 <port|2080>/# socks5  127.0.0.1 <port|2080>/g' /etc/proxychains.conf && cat /etc/proxychains.conf | grep --color=never '<port|2080>'
```


## turn smb on
#plateform/linux #target/local #cat/UTILS
```
sed -i 's/^# socks5  127.0.0.1 <port|2080>/socks5  127.0.0.1 <port|2080>/g' /etc/proxychains.conf && cat /etc/proxychains.conf | grep --color=never '<port|2080>'
```