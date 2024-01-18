# Archlinux

## virtualbox - list vms
```bash
vboxmanage list
```

## virtualbox - vm info
```bash
vboxmanage showvminfo <vm_name>
```
## virtualbox - vm delete
```bash
vboxmanage unregistervm <vm_name> --delete
```

## virtualbox - vm disable nic
```bash
vboxmanage modifyvm <vm_name> --cableconnected<nic_id|1> <nic_status|off>
```