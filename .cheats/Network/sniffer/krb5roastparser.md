# krb5roastparser
% net-creds, sniffer, pcap
#plateform/linux  #target/local  #cat/Network

## _desc
```
Parse Kerberos authentication packets (AS-REQ, AS-REP and TGS-REP) from .pcap files and generate password-cracking-compatible hashes for security testing
```

## _repo
```
https://github.com/DanMcInerney/net-creds
```

## _doc
```
```

## _install
```
```


## asreq
Domain must be completed
```bash
krb5_roast_parser.py <wlan_dump_file> as_req
```

## asrep
```bash
krb5_roast_parser.py <wlan_dump_file> as_rep
```

## tgsrep
```bash
krb5_roast_parser.py <wlan_dump_file> tgs_req
```
