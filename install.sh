#!/bin/bash

DIR="/usr/local/bin"
sudo mkdir -p $DIR
sudo cp macos/set_dns.sh $DIR/set_dns.sh
sudo chmod +x $DIR/set_dns.sh

DAEMON="com.user.setdns.plist"
sudo cp macos/$DAEMON /Library/LaunchDaemons/$DAEMON
sudo chown root:wheel /Library/LaunchDaemons/$DAEMON
sudo chmod 644 /Library/LaunchDaemons/$DAEMON
sudo launchctl load /Library/LaunchDaemons/$DAEMON
