#!/bin/bash
wget -q -O /usr/bin/auto-clear-ram "https://raw.githubusercontent.com/Jesanne87/combo/main/addon/autoclear/auto-clear-ram.sh"; chmod +x /usr/bin/auto-clear-ram
wget -q -O /etc/systemd/system/auto-clear-ram "https://raw.githubusercontent.com/Jesanne87/combo/main/addon/autoclear/auto-clear-ram.service"
systemctl enable auto-clear-ram
systemctl start auto-clear-ram
rm -f autokick.sh
clear
fi