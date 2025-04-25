# wifi_setup_devices
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## EDUP AX3000 - get interface name
```bash
sudo lshw -C network | grep -B5 mt7921u | grep wlan | awk '{print $3}'
```

## Alpha AWUS036ACHM - get interface name
```bash
sudo lshw -C network | grep -B5 mt76x0u | grep wlan | awk '{print $3}'
```
