# jq
% json processor

#plateform/linux  #target/local  #cat/UTILS


## get objects structure from a list
```bash
| jq '.[0] | keys'
```

## convert object into a list
```bash
[ . ]
```

## filter - clause
```bash
select(.<property_name_1> | contains("<value_1>") and .<property_name_1> == "<value_2>")
```

## filter - objects from a list 
```bash
map(<select_clause>)
```

## Transform - clause
```bash
{<name_1>: .<property_name_1>, <name_2>: .<property_name_2>}
```

## filter and transform a list
|  jq 'map(select(.name | contains("SQL"))) | map({name: .cn, SID: .objectSid})
```bash
| jq '. | map(<select_clause>) | map(<transform_clause>)'
```
