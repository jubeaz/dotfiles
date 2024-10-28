# ticketConverter.py (imp)

% impacket-kerberos, windows, kerberos, 88
#plateform/linux #target/local  #cat/UTILS

## desc
```
kirbi/ccache conversion 
```

## convert kirbi into ccache
```bash
ticketConverter.py <kribi> <ccache>
```

## convert rubeus into ccache
```bash
cat <rubeus> | base64 -d > <kribi> ; ticketConverter.py <kribi> <ccache>
```

## convert ccache into kirbi
```bash
ticketConverter.py <ccache> <kirbi> 
```