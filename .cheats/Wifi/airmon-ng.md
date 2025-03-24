# airmon-ng

#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## desc
```
Start wifi adapter in monitor mode
```

## status
```
sudo airmon-ng
```


## check processes which can cause trouble
```
sudo airmon-ng check
```


## Kill processes which can cause trouble
```
sudo airmon-ng check kill
```


## start interface
```
sudo airmon-ng start <wlan_interface|wlan0>
```

## start interface on channel
```
sudo airmon-ng start <wlan_interface|wlan0> <wlan_channel>
```

## stop interface
```
sudo airmon-ng stop <wlan_interface|wlan0>mon
```
