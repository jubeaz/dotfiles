# pacman

% pacman

#plateform/linux  #target/local  #cat/UTILS 


## _url
```
```

## _desc
```

```

## _links
```
```


# package info
```bash
pacman -Si <name>
```


# package content (not installed)
download to /var/cache/pacman/pkg/ then sudo tar tf 
```bash
pacman -Sw <pacman_package_name> && tar -tf /var/cache/pacman/pkg/<pacman_package_name>*
```


# remove orphans
```bash
pacman -Qdtq | pacman -Rns -
```