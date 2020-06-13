#!/bin/bash

echo "Raspbian german configuration"
#System Updates
apt-get update && apt upgrade -y
#Generate German Locale
echo "en_US.UTF-8 UTF-8
de_DE.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
export LC_ALL=en_US
export LANG=en_US
export LANGUAGE=en_US
#Change Timezone to Europe/Berlin
timedatectl set-timezone Europe/Berlin
#German Keyboard Layout
echo 'XKBMODEL="logitech_base"
XKBLAYOUT="de"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"' > /etc/default/keyboard
#Wi-fi Country
echo 'ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=DE' > /etc/wpa_supplicant/wpa_supplicant.conf

echo "DONE: Raspbian german configuration"
