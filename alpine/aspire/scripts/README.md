## Obtain Alpine Image
[Download Alpine Image](https://alpinelinux.org/downloads/)

## Create media boot image 
```
dd if="$HOME/Downloads/alpine.iso" of=/dev/sdb

## Mount Media
mount -t vfat /dev/sdb1 /media/usb

## Copy custom setup files to media
mkdir -p /media/usb/scripts
cp ./scripts /media/usb/scripts

