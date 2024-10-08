# Hydra

% bruteforce, access

## protocol - help
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
hydra -U <proto|ssh> 
```
## protocol - list
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
```bash
hydra -h | grep "Supported services" | tr ":" "\n" | tr " " "\n" | column -e
```

## protocol - password spray
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
-o <FILE>
-b <format> text (default),json
-f  exit when a login/pass pair is found
```bash
hydra -L <userlist> -p <password> <ip> <proto|ssh> 
```

## protocol - user list and password list
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
-u loop on user first
-o <FILE>
-b <format> text (default),json
-f  exit when a login/pass pair is found
```bash
hydra -L <userlist> -P <passlist> <ip> <proto|ssh> 
```

## protocol - user and password list
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
-o <FILE>
-b <format> text (default),json
-f  exit when a login/pass pair is found
```bash
hydra -l <user> -P <passlist> <ip> <proto|ssh> 
```

## protocol - user=password, null password and password=reverseuser
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
-o <FILE>
-b <format> text (default),json
-f  exit when a login/pass pair is found
```bash
hydra -L <userlist> -e nsr <ip> <proto|ssh> 
```

## protocol - file "user:pass" format
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
-o <FILE>
-b <format> text (default),json
-f  exit when a login/pass pair is found
```bash
hydra -t 4 -s <port> -C <file_user_pass>   <proto|ssh> 
```

## https-form
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
optional:
    header: [h|H]=<header_name>\: <header_value>
    skip pre-request: [g|G] (when no pre-cookies required)
    pre-cookie page: [c|C]=/page/uri
```bash
hydra -V  -L <userlist> -e s -u -f -P <passlist> <fqdn> -s <port|443> https-post-form "<form_path>:<const_form_params>&<user_field_name|username>=^USER^&<password_field_name|password>==^PASS^<const_form_params>:F=<error_reponse_pattern[:<optional>]"
```


## http-form
#plateform/linux #target/remote #cat/ATTACK/BRUTEFORCE-SPRAY 
optional:
    header: [h|H]=<header_name>\: <header_value>
    skip pre-request: [g|G] (when no pre-cookies required)
    pre-cookie page: [c|C]=/page/uri
```bash
hydra -V  -L <userlist> -e s -u -f -P <passlist> <fqdn> -s <port|80> http-post-form "<form_path>:<const_form_params>&<user_field_name|username>=^USER^&<password_field_name|password>==^PASS^<const_form_params>:F=<error_reponse_pattern[:<optional>]"
```