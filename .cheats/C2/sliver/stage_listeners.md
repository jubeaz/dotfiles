# sliver

% sliver, C2


## stage-Listener - list
```bash
jobs
```

## stage-Listener - remove
```bash
jobs -k <id>
```

## stage-Listener - HTTP stagging listener (beacon profile)
```bash
stage-listener --url http:/<l_ip|127.0.0.1>:<l_port|8871> --profile <beacon_profile_name>  --prepend-size --aes-encrypt-key <eas_key|D(H+KbPeShVmYq3t6v9y$B&E)H@McQfT> --aes-encrypt-iv <eas_iv|9y/B?E(G+KbPeShV> -C zlib
```