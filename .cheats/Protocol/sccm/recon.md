# sccm-recon
% sccm, mecm

#plateform/linux  #target/remote  #protocol/ldap  #port/639 #port/389 #cat/RECON

## ldeep - sccm
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn> -t simple -u <user> -p <password> sccm
```

## ldeep - sccm (objectclass)
```bash
ldeep ldap -d <domain_fqdn> -s ldap://<dc_fqdn> -t simple -u <user> -p <password> search "(objectclass=mssmsmanagementpoint)" dnshostname,msSMSSiteCode
```

#plateform/windows  #target/remote  #protocol/ldap  #port/639 #port/389 #cat/RECON
## pwsh - ldap (objectclass)
```powershell
([ADSISearcher]("objectClass=mSSMSManagementPoint")).FindAll() | % {$_.Properties}
```

#plateform/windows  #target/local  #protocol/wmi  #cat/RECON
## pwsh - wmi (sccm client)
```powershell
Get-WmiObject -Class SMS_Authority -Namespace root\CCM
```

#plateform/linux #target/remote #cat/RECON #tag/scan

## nmap - search sccm
```bash
nmap -p 80,443,445,1433,10123,8530,8531 -sV <target>
```

## nmap - search pxe
```bash
nmap -p 67,68,69,4011,547 -sU <target>
```

#plateform/linux #target/remote  #protocol/smb #port/445 #cat/RECON

## nxc - enum shares
```bash
nxc smb <target> -u <user> -p <password> -d <domain_fqdn> --shares
```

## rpcdump - pxe
```bash
rpcdump.py <pxe_ip> |grep Protocol | grep MS-WDSC
```

