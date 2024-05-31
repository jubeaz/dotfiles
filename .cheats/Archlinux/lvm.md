# lvm

## physical volume - list
```bash
sudo pvdisplay
```


## Volume group - list
```bash
sudo vgdisplay
```

## Logical volume - list
```bash
sudo lvdisplay
```

## Logical volume - extend (and resize)

```bash
 lvextend -L +<amount>G <lv_path> -r
 ```