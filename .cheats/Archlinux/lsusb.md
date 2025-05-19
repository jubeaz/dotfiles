# lsusb

% lsusb
#plateform/linux #target/local #cat/UTILS 

## get tree
```bash
lsusb -t
```

## get device by bus/devnum
```bash
lsusb -v -s <usb_bus>:<usb_devnum>
```

## get device by vendor/product
```bash
lsusb -v -d <usb_vendor_id>:<usb_product_i>
```
