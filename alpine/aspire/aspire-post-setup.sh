#!/bin/sh

/etc/init.d/wpa_supplicant start

rc-update add wpa_supplicant boot

apk add curl git iftop pciutils

# Install xfce4 Desktop
apk add xfce4 xfce4-terminal xfce4-screensaver lightdm-gtk-greeter dbus firefox

# Install fonts 
apk add font-terminus font-inconsolata font-dejavu font-noto font-noto-cjk font-awesome font-noto-extra font-liberation

rc-update add dbus
rc-update add lightdm

# Install video driver: Intel Corporation Mobile 945GSE Express Integrated Graphics Controller
apk add mesa-dri-gallium mesa-va-gallium libva-intel-driver linux-firmware-i915 xf86-video-intel

# Install audio drivers
apk add alsa-utils alsa-utils-doc alsa-lib alsaconf

# Sound Check
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone umute

amixer set Master 30%
speaker-test -c 2
