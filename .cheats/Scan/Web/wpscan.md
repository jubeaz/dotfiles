# WPSCAN

% wpscan, wordpress

#plateform/linux #target/remote #cat/RECON


## _url
```
https://github.com/wpscanteam/wpscan
```

## _desc
```
WordPress Security Scanner 
```

## _links
```
```

## _install
```
gem install wpscan
```

## wpscan with docker and burp proxy
```
sudo docker run -it --network host --rm wpscanteam/wpscan --proxy http://127.0.0.1:8080 --url <url> --disable-tls-checks -e ap,tt,cb,dbe,u1-20,m --api-token <wpscan_apitoken>
```

## Enumerate
```bash
sudo wpscan --url http://<target> --enumerate --api-token <token>
```


## plugin enum
```bash
sudo wpscan --url http://<target> -e ap --plugins-detection aggressive 
```
