# Archlinux

## disks - list 
rota: 
    1 means HDD
    0 means SSD
```bash
lsblk -d -o name,rota,size,type,mountpoints
```


## vhdx - info 
```bash
qemu-img info  <vhdx>.vhdx
```

## vhdx - mount (1/3) 
```bash
sudo qemu-nbd --connect=/dev/nbd0 <vhdx>.vhdx
```

## vhdx - mount (2/2)
```bash
sudo mount /dev/nbd0p2 mnt/
```

## vhdx - disconect
```bash
sudo qemu-nbd --disconnect /dev/nbd0
```