# jq
% json processor

#plateform/linux  #target/local  #cat/UTILS


# filter object containing a property which contains
```bash 
| jq '.results | map(select(.<property_name> | contains("<value>")))'
```