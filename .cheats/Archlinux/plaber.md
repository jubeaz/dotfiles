# plaber

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


## disable all buildint NAT interfaces
```bash
for b in $(cat /etc/ansible/vagrants/<lab_name|netrunner>/Vagrantfile  | grep bname: | cut -d'"' -f 2); do echo "vboxmanage modifyvm $b --cableconnected1 off"; vboxmanage modifyvm $b  --cableconnected1 off; done
```

## start all vagrant box
```bash
for b in $(cat /etc/ansible/vagrants/<lab_name|netrunner>/Vagrantfile  | grep bname: | cut -d'"' -f 2); do echo "vboxmanage startvm $b --type headless"; vboxmanage startvm $b --type headless; done
```

## ansible-build
```bash
ansible-playbook -i /etc/ansible/lab_inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml /etc/ansible/lab_playbooks/build-lab.yml
```

## ansible-enable
```bash
ansible-playbook -i /etc/ansible/lab_inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml /etc/ansible/lab_playbooks/enable-lab.yml
```

## list ips
```bash
cat /etc/ansible/lab_inventories/<lab_name|netrunner>/<lab_name|netrunner>.yml |grep ansible_host: |tr  '}' ':' |tr ',' ':'| cut -d: -f1,3
```

## rdp (domain)  
```
xfreerdp /cert:ignore /u:jubeaz@hass.local /p:jubeaz  /v:<ip> /h:1024 /w:1640 /drive:share,./ +drives
```

## winrm (domain)  
```
evil-winrm -i <ip> -u jubeaz@haas.local -p jubeaz
```

## rdp (vagrant)  
```
xfreerdp /cert:ignore /u:vagrant /p:vagrant  /v:<ip> /h:1024 /w:1640 /drive:share,./ +drives
```

## winrm (vagrant)  
```
evil-winrm -i <ip> -u vagrant -p vagrant
```
