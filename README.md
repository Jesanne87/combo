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
wget https://raw.githubusercontent.com/annelyah23/VPS-access-root/main/root7.sh && bash root7.sh
 ```


## INSTALLATION SCRIPT

  ```html
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/Jesanne87/combo/main/install.sh && chmod +x install.sh && sed -i -e 's/\r$//' install.sh && screen -S install.sh ./install.sh

  ```
