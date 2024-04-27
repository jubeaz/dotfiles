# rpcmap.py (imp) 

% impacket-smb-msrpc, windows, smb, msrpc
#plateform/linux #target/remote #cat/RECON 

## desc
```
Dumps the remote RPC enpoints information via epmapper.
```

## list rpc endpoint (creds)
```bash
rpcdump.py -debug <domain_fqdn>/<user>:'<password>'@<target_ip>
```

## list rpc endpoint (pth)
```bash
rpcdump.py -debug -hashes :<nt_hash> <domain_fqdn>/<user>@<target_ip>
```

## Find Spooler services (printerbug coerce)
```bash
rpcdump.py -debug  <domain_fqdn>/<user>:'<password>'@<target_ip> | grep -A 6 "spoolsv"
```