# vboxmanage

% virtualbox, vboxmanage
#plateform/linux #target/local #cat/UTILS 

## list - vms
```bash
vboxmanage list
```

## list - running vms
```bash
vboxmanage list runningvms
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

## snapshot - take 
```bash
vboxmanage snapshot <vm_name> take <snapshot_name>  [--description="<description>"]
```

## snapshot - take live (running vm) 
```bash
vboxmanage snapshot <vm_name> take <snapshot_name> [--description="<description>"] --live 
```

## snapshot - list 
```bash
vboxmanage snapshot <vm_name>  list 
```

## snapshot - restore 
```bash
vboxmanage snapshot <vm_name>  restore  <snapshot_name>
```

## snapshot - restore current (last) 
```bash
vboxmanage snapshot <vm_name> restorecurrent
```