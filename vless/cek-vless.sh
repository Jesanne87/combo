#!/bin/bash
NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'

IPINFO_API_KEY="b6b5857f4f0812"
IPGEO_API_KEY="41a897436b4b478fa2070081e01cf1aa"
CACHE_FILE="/etc/xray/isp_cache.txt"

# Create the cache file if it doesn't exist
mkdir -p /etc/xray
touch "$CACHE_FILE"

echo -e "${BB}————————————————————————————————————————————————————${NC}"
echo -e "         ${WB}Unique IP addresses for all users${NC}              "
echo -e "${BB}————————————————————————————————————————————————————${NC}"

# Get all users
users=$(grep -oP '^#=\s*\K\w+' /usr/local/etc/xray/config.json | sort | uniq)

for user in $users; do
    ips=$(grep "email: $user" /var/log/xray/access.log | cut -d " " -f 3 | sed -E 's/from tcp://g; s/tcp://g; s/\[//g; s/\]//g; s/:0//; s/:[0-9]*//' | sort | uniq)
    
    ip_count=$(echo "$ips" | wc -l)
    if [ "$ip_count" -gt 1 ]; then
        echo -e "User ${RB}$user ${NC}is LOGGED in from multiple Devices!!${NC}"
        echo "User: $user" >> /home/multiple_ip_logins.log
        echo "$ips" >> /home/multiple_ip_logins.log
        echo "$last_login" >> /home/multiple_ip_logins.log
        echo "----------------------------------------" >> /home/multiple_ip_logins.log
    fi

    last_login=$(grep "email: $user" /var/log/xray/access.log | tail -n 1 | awk '{split($2, t, "."); print $1, t[1]}')

    expiration_file="/usr/local/etc/xray/config.json"
    if grep -q "#= $user" "$expiration_file"; then
        expired_date=$(grep -oP "#= $user \K\d{4}-\d{2}-\d{2}( \d{2}:\d{2}:\d{2})?" "$expiration_file" | head -n 1)
    else
        expired_date="Unknown"
    fi

    uuid=$(grep -oP "(?<=\"id\": \")\S+(?=\",.*\"email\": \"$user\")" "$expiration_file" | head -n 1)

    if [ -n "$ips" ] || [ -n "$last_login" ] || [ "$expired_date" != "Unknown" ]; then
        echo -e "${YB}User${NC} : ${GB}$user${NC}"
        if [ -n "$uuid" ]; then
            echo -e "UUID: ${GB}$uuid${NC}"
        fi

        for ip in $ips; do
            cache_line=$(grep -w "$ip" "$CACHE_FILE")
            if [ -z "$cache_line" ]; then
                # Try ipinfo.io
                response=$(curl -s --max-time 5 "https://ipinfo.io/${ip}?token=${IPINFO_API_KEY}")
                isp=$(echo "$response" | jq -r '.org // empty' | sed 's/^AS[0-9]* //')
                country=$(echo "$response" | jq -r '.country // empty')

                # If failed or incomplete, fallback to ipgeolocation.io
                if [ -z "$isp" ] || [ -z "$country" ]; then
                    response=$(curl -s --max-time 5 "https://api.ipgeolocation.io/ipgeo?apiKey=${IPGEO_API_KEY}&ip=${ip}")
                    isp=$(echo "$response" | jq -r '.isp // "Unknown ISP"')
                    country=$(echo "$response" | jq -r '.country_name // "Unknown Country"')
                fi

                isp="${isp:-Unknown ISP}"
                country="${country:-Unknown Country}"
                echo "$ip|$isp|$country" >> "$CACHE_FILE"
            else
                IFS='|' read -r _ isp country <<< "$cache_line"
            fi

            echo -e "${ip}${NC} ---->> ${RB}${isp}${NC},${YB}${country}${NC}"
        done

        if [ -n "$last_login" ]; then
            echo -e "⏰ Last login: $last_login"
        else
            echo -e "⚠️ Last login: ${RB}OFFLINE${NC}"
        fi

        echo -e "Expiration Date: ${GB}$expired_date${NC}"
        echo -e "${BB}————————————————————————————————————————————————————${NC}"
    fi
done

echo ""
read -n 1 -s -r -p "Press any key to back on menu"
vless
