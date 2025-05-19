# kismet
% wifi, bluetooth, btle, zigbee, sensor, meter, adsb, radiation
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## _desc
```
```

## _repo
```
```

## _doc
```
```

## _install
```
```

## UI
```bash
http://<ip>:2501
```

## wifi - monitor
```
sudo ip link set <wlan_interface|wlan> down && sudo iw dev <wlan_interface|wlan> set type monitor && sudo ip link set <wlan_interface|wlan> up && kismet -c <wlan_interface|wlan>
```