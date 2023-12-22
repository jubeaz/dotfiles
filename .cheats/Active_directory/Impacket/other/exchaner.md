# exchanger

% impacket-other, windows, kerberos, 88, exchange

## help
#plateform/linux  #target/remote  #protocol/exchange 
```bash
exchanger.py <domain_netbios>/<user>:'<password>'@<fqdn> -debug nspi --help
```

## list Address Books
#plateform/linux  #target/remote  #protocol/exchange 
```bash
exchanger.py <domain_netbios>/<user>:'<password>'@<fqdn> -debug nspi list-tables -count
```

## dump Address Book by its name or GUID
#plateform/linux  #target/remote  #protocol/exchange 
```bash
exchanger.py <domain_netbios>/<user>:'<password>'@<fqdn> -debug nspi  dump-tables -guid <guid> -lookup-type EXTENDED -output-file gal.txt
```
## return AD objects by their GUIDs:
#plateform/linux  #target/remote  #protocol/exchange 
```bash
exchanger.py <domain_netbios>/<user>:'<password>'@<fqdn> -debug nspi --help
```
## dump all AD records via requesting DNTs
#plateform/linux  #target/remote  #protocol/exchange 
```bash
exchanger.py <domain_netbios>/<user>:'<password>'@<fqdn> -debug nspi --help
```