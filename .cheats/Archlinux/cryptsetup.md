# cryptsetup



## Create LUKS encrypted container on partition
```bash
sudo cryptsetup luksFormat /dev/<partition>
```

## Open LUKS encrypted container
```bash
sudo cryptsetup open /dev/<partition> <name|cryptlvm>
```

cryptsetup close cryptlvm2