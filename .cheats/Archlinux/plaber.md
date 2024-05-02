# plaber

## lab - remote shutdown 
```bash
ssh jubeaz@yoki "vboxmanage list runningvms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage controlvm {} acpipowerbutton"
```

## lab - shutdown 
```bash
vboxmanage list runningvms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage controlvm {} acpipowerbutton
```
## lab - poweroff
```bash
vboxmanage list runningvms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage controlvm {} poweroff
```
## lab - save
```bash
vboxmanage list runningvms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage controlvm {} savestate
```

## lab - disable all buildint NAT interfaces
```bash
vboxmanage list vms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage modifyvm {} --cableconnected1 off 
```

## lab - remote start 
```bash
ssh jubeaz@yoki "vboxmanage list vms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage startvm {} --type headless"
```

## lab - start
```bash
vboxmanage list vms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage startvm {} --type headless
```

## lab - enable
```bash
ansible-playbook -i <plaber_path|.>/inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml <plaber_path|.>/playbooks/enable-lab.yml
```

## snapshot - take
```bash
vboxmanage list vms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage snapshot {} take <snapshot_name> --description="<description>" --live 
```

## snapshot - restore
```bash
vboxmanage list vms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage snapshot {} restore  <snapshot_name>
```

## snapshot - restore current (last) 
```bash
vboxmanage list vms | grep <lab_prefix|nrunner> | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} vboxmanage snapshot {} restorecurrent 
```

## snapshot - list 
```bash
vboxmanage list vms | grep nrunner | sed -r 's/"nrunner_(.*)"(.*)\{(.*)\}/nrunner_\1/' | xargs -L1 -I {}  vboxmanage snapshot {} list 
```

## build - firewall
```bash
ansible-playbook -i <plaber_path|.>/inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml <plaber_path|.>/playbooks/build-fw.yml
```

## build - lab
```bash
ansible-playbook -i <plaber_path|.>/inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml <plaber_path|.>/playbooks/build-lab.yml
```

## list ips
```bash
cat <plaber_path|.>/inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml |grep ansible_host: |tr  '}' ':' |tr ',' ':'| cut -d: -f1,3
```

## rdp (jubeaz)  
```bash
xfreerdp /cert:ignore /u:jubeaz@<domain_fqn> /p:jubeaz  /v:<ip> /h:1024 /w:1640 /drive:share,./ +drives
```

## winrm (jubeaz)  
```bash
evil-winrm -i <ip> -u jubeaz@<domain_fqn> -p jubeaz
```

## rdp (domain admin)  
```bash
xfreerdp /cert:ignore /u:administrator@<domain_fqn> /p:Jubeaz12345+-  /v:<ip> /h:1024 /w:1640 /drive:share,./ +drives
```

## winrm (domain admin)  
```bash
evil-winrm -i <ip> -u administrator@<domain_fqn> -p Jubeaz12345+-
```

## rdp (vagrant)  
```bash
xfreerdp /cert:ignore /u:vagrant /p:vagrant  /v:<ip> /h:1024 /w:1640 /drive:share,./ +drives
```

## winrm (vagrant)  
```bash
evil-winrm -i <ip> -u vagrant -p vagrant
```
