#!/bin/bash

ipv4="$(curl -s http://ipv4.icanhazip.com)" 
ipv6="$(curl -s http://ipv6.icanhazip.com)"
sleep 0.25
localip="$(hostname -I | awk '{print $1}')"
localdevices="$(arp -a | wc -l | awk '{print $1}')"
echo "Your public IPv4 is: $ipv4"
sleep 0.25
echo "Your public IPv6 is: $ipv6"
sleep 0.25
echo "Your local IP is: $localip"
sleep 0.25
echo "You appear to have [$localdevices] device(s) on your local network"
sleep 0.75
echo "Thank you for coming to my TED Talk"
