# The below code uses enp0s25 as the default name for ethernet adapter when extracting local MAC address per the systemd naming scheme
# change this adapter name to whatever your local ethernet adapter name is as needed

#!/bin/bash

ipv4="$(curl -s http://ipv4.icanhazip.com)"
ipv6="$(curl -s http://ipv6.icanhazip.com)"
sleep 0.10
localip="$(hostname -I | awk '{print $1}')"
localmac="$(ip link show enp0s25 | awk '/ether/ {print $2}')" # replace enp0s25 with your local ethernet adapter's name or leave as default
localdevices="$(arp -a | wc -l | awk '{print $1}')"
echo "Your public IPv4 address is: $ipv4"
sleep 0.10
echo "Your public IPv6 address is: $ipv6"
sleep 0.10
echo "Your local IP address is: $localip"
sleep 0.10
echo "Your local MAC address is: $localmac"
sleep 0.10
echo "There appears to be [$localdevices] device(s) on your local network"
sleep .10

