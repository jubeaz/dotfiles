# mssqlclient (imp)
#plateform/linux  #target/remote  #protocol/sql  #port/1433 #tag/impacket

# interactive sql authentication 
 -port PORT
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```
mssqlclient.py '<domain_fqdn>/<user>:<password>@<ip>'
```

# interactive windows authentication
 -port PORT
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```
mssqlclient.py -windows-auth '<domain_fqdn>/<user>:<password>@<ip>' 
```

# batch sql authentication
 -port PORT
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```
mssqlclient.py -file <cmd-file> -show '<domain_fqdn>/<user>:<password>@<ip>'
```

# batch windows authentication
 -port PORT
 -db DB
 -dc-ip ip (If ommited it use the domain part (FQDN) specified in the target parameter)
```
mssqlclient.py -file <cmd-file> -show -windows-auth '<domain_fqdn>/<user>:<password>@<ip>'
```