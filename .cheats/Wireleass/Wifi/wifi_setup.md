# wifi_setup
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
sudo rfkill block <wlan_device|phy>
```

## device power on (rfkill)
```bash
sudo rfkill unblock <wlan_device|phy>
```

## device capabilities
```bash
sudo iw phy <wlan_device|phy> info
```

## device all capabilities
```bash
sudo iw list
```

## device info
```bash
ls /sys/class/ieee80211/<wlan_device|phy>
```

## interface driver
```bash
ls /sys/class/net/<wlan_interface|wlan>/device/driver/module/drivers/
```

## interface info (ip)
```bash
ip link show <wlan_interface|wlan>
```

## interfaces all info (iw)
```bash
sudo iw dev
```

## interface specific info (iw)
```bash
sudo iw dev <wlan_interface|wlan> info
```


## interface - rename
```bash
sudo ip link set <wlan_interface|wlan> down && sudo ip link set <wlan_interface|wlan> name <wlan_new_interface|wlan> && sudo ip link set wlan_new_interface|wlan> up
```

## interface - down
```bash
sudo ip link set <wlan_interface|wlan> down
```

## interface - up
```bash
sudo ip link set <wlan_interface|wlan> up
```

## interface power save - get
```bash
sudo iw dev <wlan_interface|wlan> get power_save
```

## interface power save - set
```bash
sudo iw dev <wlan_interface|wlan> set power_save on
```

## interface - status
```bash
ip link show <wlan_interface|wlan>
```

## interface - connection status
```bash
iw dev <wlan_interface|wlan> link
```
## interface - mac address
```bash
cat /sys/class/net/<wlan_interface|wlan>/address
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
sudo iw <wlan_interface|wlan> info
```

## txpower - set fixed (iw)
100 * <power in dBm>
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iw dev <wlan_interface|wlan> set txpower fixed <txpower|3000> && sudo ip link set <wlan_interface|wlan> up
```

## txpower - set auto (iw)
```bash
sudo iw dev <wlan_interface|wlan> set txpower auto
```

## txpower - set (iwconfig) 
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iwconfig <wlan_interface|wlan> txpower <trxpower|30> && sudo ifconfig <wlan_interface|wlan> up
```

## channel / frequency - list (iwlist)
```bash
iwlist <wlan_interface|wlan> channel
```

## channel / frequency - get current (iwconfig)
```bash
iwlist <wlan_interface|wlan> frequency | grep Current
```

## channel - set (iw)
no need to down interface
```bash
sudo iw dev <wlan_interface|wlan> set channel <channel>
```

## frequency - set (iw)
no need to down interface
```bash
sudo iw dev <wlan_interface|wlan> set freq <frequency>
```

## channel - set auto (iwconfig)
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iwconfig <wlan_interface|wlan> channel auto && sudo ip link set <wlan_interface|wlan> up 
```

## channel - set (iwconfig)
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iwconfig <wlan_interface|wlan> channel <wlan_channel> && sudo ip link set <wlan_interface|wlan> up 
```

## frequency - set (iwconfig)
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iwconfig <wlan_interface|wlan> freq <wlan_frequency|"5.52G"> && sudo ip link set <wlan_interface|wlan> up 
```

## interface add - managed mode
```bash
sudo iw phy <wlan_device|phy> interface add <wlan_vif_name> type managed && iw dev
```

## interface add - monitor mode
```bash
sudo iw phy <wlan_device|phy> interface add <wlan_vif_name> type monitor && iw dev
```

## interface add - AP mode
```bash
sudo iw phy <wlan_device|phy> interface add <wlan_vif_name> type __ap && iw dev
```

## interface add - del
```bash
sudo iw dev <wlan_vif_name> del ; iw dev
```

## interface mode - monitor
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iw dev <wlan_interface|wlan> set type monitor && sudo ip link set <wlan_interface|wlan> up 
```

## interface mode - managed (station)
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iw dev <wlan_interface|wlan> set type managed && sudo ip link set <wlan_interface|wlan> up 
```

## interface mode - ad-hoc (ibss)
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iw dev <wlan_interface|wlan> set type ibss && sudo iw interface ibss join <ssid> <frequency> && sudo ip link set <wlan_interface|wlan> up 
```

## interface mode - master (AP / router)
```bash
see hostapd 
```

## interface mode - mesh
```bash
sudo ip link set <wlan_interface|wlan> down && sudo iw dev <wlan_interface|wlan> set type mesh && sudo ip link set <wlan_interface|wlan> up 
```


## interface - get MAC (maccchanger)
```bash
macchanger -s <wlan_interface|wlan>
```

## interface - get MAC (maccchanger)
```bash
macchanger --show <wlan_interface|wlan>
```

## interface - set MAC (maccchanger)
```bash
sudo ip link set <wlan_interface|wlan> down && sudo macchanger <wlan_interface|wlan> -m <new_mac> && sudo ip link set <wlan_interface|wlan> up
```

## scan - full (iw)
```bash
sudo iw dev <wlan_interface|wlan> scan
```

## scan - summary (iw)
```bash
sudo iw dev <wlan_interface|wlan> scan | grep 'BSS\|signal\|SSID\|station count\|primary channel' | grep -v "OBSS"
```

## scan - summary (iwlist)
```bash
sudo iwlist <wlan_interface|wlan> scan | grep 'Cell\|Quality\|ESSID\|IEEE'
```

