# openssl

% openssl, certificate, encryption

#plateform/linux #target/local #cat/UTILS 

## Generate Diffie-Hellman parameters
```bash
openssl dhparam -out <ossl_dh_file|dh.pem> <ossl_dh_bits|2048>
```

## Generate CA key (RSA)
```bash
openssl genrsa -out <ossl_ca_key_file|ca-key.pem> <ossl_ca_bits|2048>
```

## Generate CA cert
```bash
openssl req -new -x509 -nodes -days <ossl_ca_cert_days|100> -key <ossl_ca_key_file|ca-key.pem> -out <ossl_ca_cert_file|ca.pem> -subj '/C=<ossl_srv_subj_C|US>/ST=<ossl_srv_subj_ST|California>/L=<ossl_srv_subj_L|San-Francisco>/O=<ossl_srv_subj_O|Jubeaz>/OU=<ossl_srv_subj_OU|IT-Department>/CN=<ossl_srv_subj_CN|JubeazCA>'
```

## Generate server csr and key (RSA)
```bash
echo -e '[ req ]\ndistinguished_name = dn\nattributes = att\nreq_extensions = ext\nprompt = no\n[ext]\nsubjectAltName = DNS:<ossl_srv_fqdn|jubeaz.com>\n[dn]\ncountryName = <ossl_srv_subj_C|US>\nstateOrProvinceName = <ossl_srv_subj_ST|California>\nlocalityName = <ossl_srv_subj_L|San-Francisco>\n0.organizationName = <ossl_srv_subj_O|Jubeaz>\norganizationalUnitName = U=<ossl_srv_subj_OU|IT-Department>\ncommonName = <ossl_srv_subj_CN|Jubeaz>\n[att]\nchallengePassword = <ossl_srv_challenge|challenge1234>' > <ossl_srv_cnf_file|server.cnf> && openssl req -newkey rsa:<ossl_srv_bits|2048> -nodes -keyout <ossl_srv_key_file|server-key.pem> -out <ossl_srv_csr_file|server.csr> -config <ossl_srv_cnf_file|server.cnf>
```

## Sign CSR
```bash
openssl x509 -req -days <ossl_srv_cert_days|100> -set_serial 01 -in <ossl_srv_csr_file|server.csr>  -out <ossl_srv_csr_file|server.pem>  -CA <ossl_ca_cert_file|ca.pem>  -CAkey <ossl_ca_key_file|ca-key.pem>
```


## Display certificate
```bash
openssl x509 -in <INPUT_PEM> -noout -text
```


## Create a new signing request and key
```bash
openssl req -new -newkey rsa:<RSA_LENGTH> -nodes -out <OUTPUT_CSR> -keyout <OUTPUT_KEY> 
```

## Create a new signing request and key
```bash
openssl req -new -newkey rsa:<RSA_LENGTH> -nodes -out <OUTPUT_CSR> -keyout <OUTPUT_KEY> 
```

## Create a new self-signed certificate
```bash
openssl req -x509 -sha256 -nodes -days <VALIDITY> -newkey rsa:<RSA_LENGTH> -out <OUTPUT_CRT> -keyout <OUTPUT_KEY>
```

## Create a signing request from existing key
```bash
openssl req -out <OUTPUT_CSR> -key <INPUT_KEY> -new
```

## Create a signing request from existing certificate and key
```bash
openssl x509 -x509toreq -out <OUTPUT_CSR> -in <INPUT_CRT> -signkey <INPUT_KEY>
```

## Remove a passphrase from a private key
```bash
openssl rsa -in <INPUT_KEY> -out <OUTPUT_PLAINTEXT_KEY>
```

## Convert a DER encoded file to a PEM encoded file
```bash
openssl x509 -inform der -in <INPUT_CRT> -out <OUTPUT_PEM>
```

## Convert a PEM encoded file to a DER encoded file
```bash
openssl x509 -outform der -in <INPUT_PEM> -out <OUTPUT_CRT>
```

## Convert a PKCS12 encoded file containing a private key and certificates to PEM
```bash
openssl pkcs12 -in <INPUT_PKCS12> -out <OUTPUT_PEM> -nodes
```

## Extract the private key from a PKCS12 encoded file
```bash
openssl pkcs12 -in <INPUT_PKCS12> -out <OUTPUT_PEM> -nodes -nocerts
```

## Extract the certificate from a PKCS12 encoded file
```bash
openssl pkcs12 -in <INPUT_PKCS12> -out <OUTPUT_PEM> -nodes -nokeys
```

## Convert a PEM certificate file and a private key to PKCS12 encoded file
```bash
openssl pkcs12 -export -out <OUTPUT_PKCS12> -inkey <INPUT_KEY> -in <INPUT_CRT> -certfile <INPUT_CRT>
```

## Validate a certificate signing request
```bash
openssl req -text -noout -verify -in <OUTPUT_CSR>
```

## Validate a private key
```bash
openssl rsa -in <INPUT_KEY> -check
```

## Validate a certificate
```bash
openssl x509 -in <INPUT_CRT> -text -noout
```

## Validate a PKCS12 file (.pfx or .p12)
```bash
openssl pkcs12 -info -in <INPUT_PKCS12>
```

## Compare the MD5 hash of a certificate
```bash
openssl x509 -noout -modulus -in <INPUT_CRT> | openssl md5
```

## Compare the MD5 hash of a private key
```bash
openssl rsa -noout -modulus -in <INPUT_KEY> | openssl md5
```

## Compare the MD5 hash of a certificate signing request
```bash
openssl req -noout -modulus -in <INPUT_CSR> | openssl md5
```

## Display the server certificate chain
```bash
openssl s_client -connect <URL>:<PORT>
```


## compute NTLM
```bash
echo -n '<password>' | iconv -f UTF-8 -t UTF-16LE | openssl dgst -md4 -binary | xxd -p
```