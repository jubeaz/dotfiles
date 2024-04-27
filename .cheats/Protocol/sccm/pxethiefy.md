# pxethiefy
% sccm, mecm, pxe

#plateform/linux  #target/remote  #protocol/pxe #cat/RECON

## desc
```
https://github.com/csandker/pxethiefy
```

## query
```bash
sudo python3 pxethiefy.py explore -i <interface>
```

## query (targeted)
```bash
pxethiefy.py explore -i <interface> -a <pxe_ip>
```


## decryt (targeted)
```bash
pxethiefy.py decrypt -p <password> -f <boot_var_file>
```