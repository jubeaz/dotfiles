# windows
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/BRUTEFORCE-SPRAY  

# powershell
% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389 #cat/ATTACK/BRUTEFORCE-SPRAY   #tag/powershell 

# hydra

#plateform/linux #target/remote #protocol/rdp #port/3389 #cat/ATTACK/BRUTEFORCE-SPRAY 

## Hydra - rdp - userlist and password list
```bash
hydra -L <userlist> -P <passlist> rdp://<ip>
```

## Hydra - rdp - user and password list

```bash
hydra -l <user> -P <passlist> rdp://<ip>
```

## Hydra - rdp - spray

```bash
hydra -L <userlist> -p <password> rdp://<ip>
```