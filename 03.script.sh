#!/bin/sh
echo "----------------------------------------"
echo "|           connection wifi            |"
echo "----------------------------------------"
echo "uid Wifi:"
read wifiName
echo "password:"
read passWifi
ip link set wlan0 up
wpa_passphrase $wifiName $passWifi > /etc/wifi
wpa_supplicant -B -i wlan0 -D wext -c /etc/wifi
dhclient
echo ">> Press enter to continue..."
read nextCommand
