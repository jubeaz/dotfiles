# expect

% expect
#plateform/linux #target/local #cat/UTILS 


## interact with sudo to cat a file
```bash
expect -c 'spawn sudo -S cat "<file>";expect "*password*";send "<THE_PASSWORD_OF_THE_USER>";send "\r\n";interact'
```