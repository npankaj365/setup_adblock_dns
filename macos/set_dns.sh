#!/bin/bash

# Set your preferred DNS servers here
DNS1="94.140.14.14"
DNS2="94.140.15.15"

# Set your network interface (e.g., "Wi-Fi" or "Ethernet")
INTERFACE="Wi-Fi"

# Set DNS servers
networksetup -setdnsservers "$INTERFACE" $DNS1 $DNS2

# Flush DNS cache
dnscacheutil -flushcache
killall -HUP mDNSResponder


# Log the action
echo "$(date): DNS servers set to $DNS1 and $DNS2 for $INTERFACE" >> /var/log/dns_setup.log
