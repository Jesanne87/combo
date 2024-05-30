#!/bin/bash
while true
do
sleep 30
RAM=$(free -m | awk 'NR==2{print $3}')
if [ $RAM -gt 350 ]
then
systemctl restart wireproxy
fi
done