#!/bin/sh 

apk add wpa_supplicant dhcpcd

cp /media/usb/scripts/aspire_wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 

setup-alpine -e -f /media/usb/scripts/aspire-answer-file.txt 
