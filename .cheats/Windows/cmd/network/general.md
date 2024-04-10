# cmd.exe
% windows, network

#plateform/windows #target/local #cat/RECON/NETWORK #

##  network - ping sweep
```
(for /L %a IN (1,1,254) DO ping /n 1 /w 3 192.168.2.%a) | find "Reply"
```