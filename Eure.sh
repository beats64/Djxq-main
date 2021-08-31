#!/bin/bash

red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[36m\033[01m$1\033[0m"
}



function eu(){
echo -e nameserver 2a00:1098:2c::1 > /etc/resolv.conf
apt update -y
apt install python3 python3-pip -y
pip3 install requests beautifulsoup4
apt-get install cron 

wget -N --no-check-certificate https://cdn.jsdelivr.net/gh/ygkkk/Djxq/eu.py
chmod +x eu.py

read -p "德鸡登录用户名:" USERNAME
sed -i "9 s/^/USERNAME = '$USERNAME'\n/" eu.py

read -p "德鸡登录密码:" PASSWORD
sed -i "10 s/^/PASSWORD = '$PASSWORD'\n/" eu.py

read -p "TG机器人TOKEN:" TG_BOT_TOKEN
sed -i "11 s/^/TG_BOT_TOKEN = '$TG_BOT_TOKEN'\n/" eu.py

read -p "TG用户ID:" TG_USER_ID
sed -i "12 s/^/TG_USER_ID = '$TG_USER_ID'\n/" eu.py

read -p "Server酱的key:" SCKEY
sed -i "13 s/^/SCKEY = '$SCKEY'\n/" eu.py

read -p "SRE24R的key:" SRE24_TOKEN
sed -i "14 s/^/SRE24_TOKEN = '$SRE24_TOKEN'\n/" eu.py

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "* * * * * /usr/bin/python3 /root/eu.py >/dev/null 2>&1" >> /var/spool/cron/crontabs/root
chmod 777 /var/spool/cron/crontabs/root
crontab /var/spool/cron/crontabs/root
service cron restart

python3 eu.py
}

function vps(){
apt update -y
apt install python3 python3-pip -y
pip3 install requests beautifulsoup4
apt-get install cron 

wget -N --no-check-certificate https://cdn.jsdelivr.net/gh/ygkkk/Djxq/eu.py
chmod +x eu.py

read -p "德鸡登录用户名:" USERNAME
sed -i "9 s/^/USERNAME = '$USERNAME'\n/" eu.py

read -p "德鸡登录密码:" PASSWORD
sed -i "10 s/^/PASSWORD = '$PASSWORD'\n/" eu.py

read -p "TG机器人TOKEN:" TG_BOT_TOKEN
sed -i "11 s/^/TG_BOT_TOKEN = '$TG_BOT_TOKEN'\n/" eu.py

read -p "TG用户ID:" TG_USER_ID
sed -i "12 s/^/TG_USER_ID = '$TG_USER_ID'\n/" eu.py

read -p "Server酱的key:" SCKEY
sed -i "13 s/^/SCKEY = '$SCKEY'\n/" eu.py

read -p "SRE24R的key:" SRE24_TOKEN
sed -i "14 s/^/SRE24_TOKEN = '$SRE24_TOKEN'\n/" eu.py

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "* * * * * /usr/bin/python3 /root/eu.py >/dev/null 2>&1" >> /var/spool/cron/crontabs/root
chmod 777 /var/spool/cron/crontabs/root
crontab /var/spool/cron/crontabs/root
service cron restart

python3 eu.py
}


function corn(){
crontab -e
}

function rd(){
wget -N --no-check-certificate https://cdn.jsdelivr.net/gh/ygkkk/Djxq/rd.sh && chmod +x rd.sh && ./rd.sh
}

function re(){
wget -N --no-check-certificate https://cdn.jsdelivr.net/gh/ygkkk/Djxq/eu.py
chmod +x eu.py

read -p "德鸡登录用户名:" USERNAME
sed -i "9 s/^/USERNAME = '$USERNAME'\n/" eu.py

read -p "德鸡登录密码:" PASSWORD
sed -i "10 s/^/PASSWORD = '$PASSWORD'\n/" eu.py

read -p "TG机器人TOKEN:" TG_BOT_TOKEN
sed -i "11 s/^/TG_BOT_TOKEN = '$TG_BOT_TOKEN'\n/" eu.py

read -p "TG用户ID:" TG_USER_ID
sed -i "12 s/^/TG_USER_ID = '$TG_USER_ID'\n/" eu.py

read -p "Server酱的key:" SCKEY
sed -i "13 s/^/SCKEY = '$SCKEY'\n/" eu.py

read -p "SRE24R的key:" SRE24_TOKEN
sed -i "14 s/^/SRE24_TOKEN = '$SRE24_TOKEN'\n/" eu.py

sed -i '/python3/d' /var/spool/cron/crontabs/root
echo "* * * * * /usr/bin/python3 /root/eu.py >/dev/null 2>&1" >> /var/spool/cron/crontabs/root
service cron restart

python3 eu.py

}


function start_menu(){
    clear
    yellow "================================================================"
    echo "环境要求：支持Ubuntu20.04与Debain10，目前不兼容WARP"   
    echo "项目地址：https://github.com/ygkkk/Djxq"
    echo "TG群：https://t.me/joinchat/nrUoeEJV_9UxNDhl"
    echo "YouTube频道：https://www.youtube.com/channel/UCxukdnZiXnTFvjF5B5dvJ5w"
    yellow "================================================================="
    blue " 1. 首次安装续期脚本  "    
    blue " 2. 设置定时续期时间 "
    blue " 3. 时间段内随机续期 "
    blue " 4. 重置：续期账号、推送设置、续期时间 "
    red " 0. 退出脚本 "
    echo
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in   
     1 )
        vps
     ;;
     2 )
        corn
     ;;
     3 )
        rd
     ;;
     4 )
        re
     ;;     
     0 )
       exit 1
     ;;
      esac
}

start_menu "first"  
