# wifi setup
#plateform/linux #target/remote #cat/RECON #cat/ATTACK

## iw help
```bash
iw help
```

## device list
```bash
rfkill list && sudo iwctl adapter list
```

## device power off (rfkill)
```bash
sudo rfkill block <wlan_device|phy0>
```

## device power on (rfkill)
```bash
sudo rfkill unblock <wlan_device|phy0>
```

## device capabilities
```bash
sudo iw phy <wlan_device|phy0> info
```

## device all capabilities
```bash
sudo iw list
```

## interface info (ip)
```bash
ip link show <wlan_interface|wlan0>
```

## interfaces all info (iw)
```bash
sudo iw dev
```

## interface specific info (iw)
```bash
sudo iw dev <wlan_interface|wlan0> info
```

## interface - down
```bash
sudo ip link set <wlan_interface|wlan0> down
```

## interface - up
```bash
sudo ip link set <wlan_interface|wlan0> up
```

## interface power save - get
```bash
sudo iw dev <wlan_interface|wlan0> get power_save
```

## interface power save - set
```bash
sudo iw dev <wlan_interface|wlan0> set power_save on
```

## interface - status
```bash
ip link show <wlan_interface|wlan0>
```

## interface - connection status
```bash
iw dev <wlan_interface|wlan0> link
```
## interface - mac address
```bash
cat /sys/class/net/<wlan_interface|wlan0>/address
```

## txpower - knowledge
```bash
-30 dBm best
-67 dBm very good (video streaming)
-70 dBm ok (web)
-80 dBm not good
-90 dBm unsuable
```

## txpower - region get
```bash
sudo iw reg get
```

## txpower - region set
```bash
sudo iw reg set <wlan_region|US>
```

## txpower - get (iw)  
```bash
sudo iw <wlan_interface|wlan0> info
```

## txpower - set (iwconfig)  
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> txpower <trxpower|30> && sudo ifconfig <wlan_interface|wlan0> up
```


## txpower - set fixed (iw)
100 * <power in dBm>
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iw dev <wlan_interface|wlan0>  set txpower fixed <txpower|3000> && sudo ifconfig <wlan_interface|wlan0> up
```

## txpower - set auto (iw)
```bash
sudo iw dev <wlan_interface|wlan0>  set txpower auto
```

##  channel / frequency - list (iwlist)
```bash
iwlist <wlan_interface|wlan0> channel
```

##  channel / frequency - get current (iwconfig)
```bash
iwlist <wlan_interface|wlan0> frequency | grep Current
```


## channel - set (iw)
no need to down interface
```bash
sudo iw dev <wlan_interface|wmon> set channel <channel>
```

## frequency - set (iw)
no need to down interface
```bash
sudo iw dev <wlan_interface|wmon> set freq <frequency>
```

##  channel  - set auto (iwconfig)
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> channel auto && sudo ip link set <wlan_interface|wlan0> up 
```

##  channel  - set (iwconfig)
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> channel <wlan_channel> && sudo ip link set <wlan_interface|wlan0> up 
```

## frequency - set (iwconfig)
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iwconfig <wlan_interface|wlan0> freq <wlan_frequency|"5.52G"> && sudo ip link set <wlan_interface|wlan0> up 
```


## interface mode - managed (station)
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iw dev <wlan_interface|wlan0> set type managed && sudo ip link set <wlan_interface|wlan0> up 
```

## interface mode - ad-hoc (ibss)
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iw dev <wlan_interface|wlan0> set type ibss && sudo iw interface ibss join <ssid> <frequency> && sudo ip link set <wlan_interface|wlan0> up 
```

## interface mode - add AP
```bash
sudo iw phy <wlan_device|phy>  interface add <wlan_ap_interface|wap> type __ap && iw dev
```

## interface mode - del AP
```bash
sudo iw dev <wlan_ap_interface|wap> del ; iw dev
```

## interface mode - master (AP / router)
```bash
see hostapd 
```


## interface mode - mesh
```bash
sudo ip link set <wlan_interface|wlan0> down && sudo iw dev <wlan_interface|wlan0> set type mesh && sudo ip link set <wlan_interface|wlan0> up 
```

## interface mode - add monitor
```bash
sudo iw phy <wlan_device|phy> interface add  <wlan_interface|wmon> set monitor && iw dev <wlan_interface|wmon> info 
```


## interface mode - del monitor
```bash
sudo iw dev <wlan_interface|wmon> del ; iw dev
```

## scan - full  (iw)
```bash
sudo iw dev <wlan_interface|wlan0> scan
```

## scan - summary  (iw)
```bash
sudo iw dev <wlan_interface|wlan0> scan | grep 'BSS\|signal\|SSID\|station count\|primary channel' | grep -v "OBSS"
```

## scan - summary (iwlist)
```bash
sudo iwlist <wlan_interface|wlan0> scan |  grep 'Cell\|Quality\|ESSID\|IEEE'
```
