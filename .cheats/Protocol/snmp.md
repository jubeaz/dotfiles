# snmp

% snmp, 161

#plateform/linux  #target/remote  #protocol/snmp #port/161

## onesixtyone
#cat/RECON 
```
echo public > community; echo private >> community; echo manager >> community; onesixtyone -c community -i ips; rm community
```

## snmpwalk entire tree
#cat/RECON 
```
snmpwalk -c public -v1 <ip>
```

## snmpwalk - list running processes
#cat/RECON 
```
snmpwalk -c private -v1 <ip> 1.3.6.1.2.1.25.4.2.1.2
```

## snmp-check - check snmp service on specified port (default:162)
#cat/RECON 
```
snmp-check -t <ip> -c public -p 162
```


