# pretender

% pretender, LLMNR, NBT-NS, Poisoning, man in the middle

## pretender - only logs incoming queries
#plateform/multiple #target/remote #cat/RECON 
```
pretender -i <interface> --dry
```

## pretender - local name resolution spoofing
#plateform/multiple #target/remote #cat/RECON 
```
pretender -i <interface> 
```

## pretender - local name resolution spoofing redirected to 
#plateform/multiple #target/remote #cat/RECON 
```
pretender -i <interface>  -4 <ip> -6 <ip6> 
```