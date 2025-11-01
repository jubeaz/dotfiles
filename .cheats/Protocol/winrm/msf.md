# metasploit
% windows, remote, winrm, evilwinrm, 5985, 5986
#plateform/linux  #target/remote  #protocol/winrm #port/5985 #port/5986 #cat/ATTACK/CONNECT 


## winrm - Kerberos Authentication
```bash
use auxiliary/scanner/winrm/winrm_login; run rhost=192.168.123.13 username=Administrator password=p4$$w0rd winrm::auth=kerberos domaincontrollerrhost=192.168.123.13 winrm::rhostname=dc3.demo.local domain=demo.local
```
