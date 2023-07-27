#!/bin/bash
GitUser="Jesanne87"
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
cd /usr/bin
rm -f add-vmess
rm -f del-vmess
rm -f extend-vmess
rm -f trialvmess
rm -f cek-vmess
rm -f add-vless
rm -f del-vless
rm -f extend-vless
rm -f trialvless
rm -f cek-vless
rm -f add-trojan
rm -f del-trojan
rm -f extend-trojan
rm -f trialtrojan
rm -f cek-trojan
rm -f add-ss
rm -f del-ss
rm -f extend-ss
rm -f trialss
rm -f cek-ss
rm -f add-ss2022
rm -f del-ss2022
rm -f extend-ss2022
rm -f trialss2022
rm -f cek-ss2022
rm -f add-socks
rm -f del-socks
rm -f extend-socks
rm -f trialsocks
rm -f cek-socks
rm -f add-xray
rm -f del-xray
rm -f extend-xray
rm -f trialxray
rm -f cek-xray
rm -f log-create
rm -f log-vmess
rm -f log-vless
rm -f log-trojan
rm -f log-ss
rm -f log-ss2022
rm -f log-socks
rm -f log-allxray
rm -f menu
rm -f vmess
rm -f vless
rm -f trojan
rm -f shadowsocks
rm -f shadowsocks2022
rm -f socks
rm -f allxray
rm -f traffic
rm -f xp
rm -f dns
rm -f certxray
rm -f xraymod
rm -f xrayofficial
rm -f about
rm -f clear-log
rm -f changer
rm -f nf
rm -f backup
rm -f restore
rm -f autobackup
rm -f autobackupbot
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Main Menu${NC}"
wget -q -O menu "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/menu.sh"
wget -q -O vmess "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/vmess.sh"
wget -q -O vless "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/vless.sh"
wget -q -O trojan "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/trojan.sh"
wget -q -O shadowsocks "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/shadowsocks.sh"
wget -q -O shadowsocks2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/shadowsocks2022.sh"
wget -q -O socks "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/socks.sh"
wget -q -O allxray "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/allxray.sh"
wget -q -O traffic "https://raw.githubusercontent.com/${GitUser}/combo/main/menu/traffic.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Vmess${NC}"
wget -q -O add-vmess "https://raw.githubusercontent.com/${GitUser}/combo/main/vmess/add-vmess.sh"
wget -q -O del-vmess "https://raw.githubusercontent.com/${GitUser}/combo/main/vmess/del-vmess.sh"
wget -q -O extend-vmess "https://raw.githubusercontent.com/${GitUser}/combo/main/vmess/extend-vmess.sh"
wget -q -O trialvmess "https://raw.githubusercontent.com/${GitUser}/combo/main/vmess/trialvmess.sh"
wget -q -O cek-vmess "https://raw.githubusercontent.com/${GitUser}/combo/main/vmess/cek-vmess.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Vless${NC}"
wget -q -O add-vless "https://raw.githubusercontent.com/${GitUser}/combo/main/vless/add-vless.sh"
wget -q -O del-vless "https://raw.githubusercontent.com/${GitUser}/combo/main/vless/del-vless.sh"
wget -q -O extend-vless "https://raw.githubusercontent.com/${GitUser}/combo/main/vless/extend-vless.sh"
wget -q -O trialvless "https://raw.githubusercontent.com/${GitUser}/combo/main/vless/trialvless.sh"
wget -q -O cek-vless "https://raw.githubusercontent.com/${GitUser}/combo/main/vless/cek-vless.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Trojan${NC}"
wget -q -O add-trojan "https://raw.githubusercontent.com/${GitUser}/combo/main/trojan/add-trojan.sh"
wget -q -O del-trojan "https://raw.githubusercontent.com/${GitUser}/combo/main/trojan/del-trojan.sh"
wget -q -O extend-trojan "https://raw.githubusercontent.com/${GitUser}/combo/main/trojan/extend-trojan.sh"
wget -q -O trialtrojan "https://raw.githubusercontent.com/${GitUser}/combo/main/trojan/trialtrojan.sh"
wget -q -O cek-trojan "https://raw.githubusercontent.com/${GitUser}/combo/main/trojan/cek-trojan.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Shadowsocks${NC}"
wget -q -O add-ss "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks/add-ss.sh"
wget -q -O del-ss "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks/del-ss.sh"
wget -q -O extend-ss "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks/extend-ss.sh"
wget -q -O trialss "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks/trialss.sh"
wget -q -O cek-ss "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks/cek-ss.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Shadowsocks 2022${NC}"
wget -q -O add-ss2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks2022/add-ss2022.sh"
wget -q -O del-ss2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks2022/del-ss2022.sh"
wget -q -O extend-ss2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks2022/extend-ss2022.sh"
wget -q -O trialss2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks2022/trialss2022.sh"
wget -q -O cek-ss2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/shadowsocks2022/cek-ss2022.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Socks5${NC}"
wget -q -O add-socks "https://raw.githubusercontent.com/${GitUser}/combo/main/socks/add-socks.sh"
wget -q -O del-socks "https://raw.githubusercontent.com/${GitUser}/combo/main/socks/del-socks.sh"
wget -q -O extend-socks "https://raw.githubusercontent.com/${GitUser}/combo/main/socks/extend-socks.sh"
wget -q -O trialsocks "https://raw.githubusercontent.com/${GitUser}/combo/main/socks/trialsocks.sh"
wget -q -O cek-socks "https://raw.githubusercontent.com/${GitUser}/combo/main/socks/cek-socks.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu All Xray${NC}"
wget -q -O add-xray "https://raw.githubusercontent.com/${GitUser}/combo/main/allxray/add-xray.sh"
wget -q -O del-xray "https://raw.githubusercontent.com/${GitUser}/combo/main/allxray/del-xray.sh"
wget -q -O extend-xray "https://raw.githubusercontent.com/${GitUser}/combo/main/allxray/extend-xray.sh"
wget -q -O trialxray "https://raw.githubusercontent.com/${GitUser}/combo/main/allxray/trialxray.sh"
wget -q -O cek-xray "https://raw.githubusercontent.com/${GitUser}/combo/main/allxray/cek-xray.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Menu Log${NC}"
wget -q -O log-create "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-create.sh"
wget -q -O log-vmess "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-vmess.sh"
wget -q -O log-vless "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-vless.sh"
wget -q -O log-trojan "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-trojan.sh"
wget -q -O log-ss "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-ss.sh"
wget -q -O log-ss2022 "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-ss2022.sh"
wget -q -O log-socks "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-socks.sh"
wget -q -O log-allxray "https://raw.githubusercontent.com/${GitUser}/combo/main/log/log-allxray.sh"
sleep 0.5
echo -e "${GB}[ INFO ]${NC} ${YB}Downloading Other Menu${NC}"
wget -q -O xp "https://raw.githubusercontent.com/${GitUser}/combo/main/other/xp.sh"
wget -q -O dns "https://raw.githubusercontent.com/${GitUser}/combo/main/other/dns.sh"
wget -q -O certxray "https://raw.githubusercontent.com/${GitUser}/combo/main/other/certxray.sh"
wget -q -O xraymod "https://raw.githubusercontent.com/${GitUser}/combo/main/other/xraymod.sh"
wget -q -O xrayofficial "https://raw.githubusercontent.com/${GitUser}/combo/main/other/xrayofficial.sh"
wget -q -O about "https://raw.githubusercontent.com/${GitUser}/combo/main/other/about.sh"
wget -q -O clear-log "https://raw.githubusercontent.com/${GitUser}/combo/main/other/clear-log.sh"
wget -q -O changer "https://raw.githubusercontent.com/${GitUser}/combo/main/other/changer.sh"
wget -q -O nf "https://raw.githubusercontent.com/${GitUser}/combo/main/other/nf.sh"
wget -q -O backup "https://raw.githubusercontent.com/${GitUser}/combo/main/other/backup.sh"
wget -q -O restore "https://raw.githubusercontent.com/${GitUser}/combo/main/other/restore.sh"
wget -q -O autobackup "https://raw.githubusercontent.com/${GitUser}/combo/main/other/autobackup.sh"
wget -q -O autobackupbot "https://raw.githubusercontent.com/${GitUser}/combo/main/other/autobackupbot.sh"
echo -e "${GB}[ INFO ]${NC} ${YB}Download All Menu Done${NC}"
sleep 2
chmod +x add-vmess
chmod +x del-vmess
chmod +x extend-vmess
chmod +x trialvmess
chmod +x cek-vmess
chmod +x add-vless
chmod +x del-vless
chmod +x extend-vless
chmod +x trialvless
chmod +x cek-vless
chmod +x add-trojan
chmod +x del-trojan
chmod +x extend-trojan
chmod +x trialtrojan
chmod +x cek-trojan
chmod +x add-ss
chmod +x del-ss
chmod +x extend-ss
chmod +x trialss
chmod +x cek-ss
chmod +x add-ss2022
chmod +x del-ss2022
chmod +x extend-ss2022
chmod +x trialss2022
chmod +x cek-ss2022
chmod +x add-socks
chmod +x del-socks
chmod +x extend-socks
chmod +x trialsocks
chmod +x cek-socks
chmod +x add-xray
chmod +x del-xray
chmod +x extend-xray
chmod +x trialxray
chmod +x cek-xray
chmod +x log-create
chmod +x log-vmess
chmod +x log-vless
chmod +x log-trojan
chmod +x log-ss
chmod +x log-ss2022
chmod +x log-socks
chmod +x log-allxray
chmod +x menu
chmod +x vmess
chmod +x vless
chmod +x trojan
chmod +x shadowsocks
chmod +x shadowsocks2022
chmod +x socks
chmod +x allxray
chmod +x traffic
chmod +x xp
chmod +x dns
chmod +x certxray
chmod +x xraymod
chmod +x xrayofficial
chmod +x about
chmod +x clear-log
chmod +x changer
chmod +x nf
chmod +x backup
chmod +x restore
chmod +x autobackup
chmod +x autobackupbot
echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
clear
sleep 1
menu
