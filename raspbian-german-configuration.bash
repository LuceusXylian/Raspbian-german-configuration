#!/bin/bash

echo "Raspbian german configuration"
#System Updates
apt-get update && apt upgrade -y
#Generate German Locale
echo "de_DE.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
export LANG=en_GB
export LANGUAGE=en_GB
#Change Timezone to Europe/Berlin
timedatectl set-timezone Europe/Berlin
#German Keyboard Layout
echo 'XKBMODEL="pc105"
XKBLAYOUT="de"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"' > /etc/default/keyboard
#Wi-fi Country
echo 'ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=DE' > /etc/wpa_supplicant/wpa_supplicant.conf

echo "DONE: Raspbian german configuration"
