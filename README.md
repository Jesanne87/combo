# combo wombo

## Update & Upgrade First Your VPS for Debian 10 & 11

  ```html
apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot

  ```

## Update & Upgrade First Your VPS for Ubuntu 18.04 & 20.04

  ```html
  apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && sleep 2 && reboot

  ```

ROot
```html
wget https://raw.githubusercontent.com/Jesanne87/Root-Access/main/rootpass.sh && chmod +x rootpass.sh && ./rootpass.sh
 ```


## INSTALLATION SCRIPT

  ```html
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/Jesanne87/combo/main/xray.sh && chmod +x xray.sh && sed -i -e 's/\r$//' xray.sh && screen -S xray ./xray.sh

  ```
