# mssqlclient.py (imp)
% windows, impacket-mssql

#plateform/linux  #target/remote  #protocol/sql  #port/1433 #tag/impacket

## desc
```
MSSQL client, supporting SQL and Windows Authentications (hashes too). It also supports TLS.
```

## interactive sql auth (creds) 
 -port PORT (1433)
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```bash
mssqlclient.py -debug <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## interactive windows auth (creds)
 -port PORT (1433)
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```bash
mssqlclient.py -debug -windows-auth <domain_fqdn>/<user>:'<password>'@<target_fqdn> 
```

## interactive windows auth (pth)
 -port PORT (1433)
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```bash
mssqlclient.py -debug -windows-auth -hashes :<nt_hash> <domain_fqdn>/<user>@<target_fqdn> 
```

## interactive windows auth (ptt)
 -port PORT (1433)
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```bash
KRB5CCNAME=<ccache> mssqlclient.py -debug -windows-auth -no-pass -k <target_fqdn> 
```

## batch sql auth (creds) 
 -port PORT (1433)
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```bash
mssqlclient.py -debug -file <cmd-file> -show <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```

## batch windows auth (creds) 
 -port PORT (1433)
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```bash
mssqlclient.py -debug -file <cmd-file> -show -windows-auth <domain_fqdn>/<user>:'<password>'@<target_fqdn>
```