apt update -y
apt install wget curl sudo vim git
mkdir -p /root/data/docker_data/tyepcho
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/mysql.env -P /root/data/docker_data/tyepcho
mkdir -p /root/data/docker_data/tyepcho/php
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/Dockerfile -P /root/data/docker_data/tyepcho/php
mkdir -p /root/data/docker_data/tyepcho/nginx
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/default.conf -P /root/data/docker_data/tyepcho/nginx
mkdir -p /root/data/docker_data/typecho/typecho
wget https://github.com/typecho/typecho/releases/download/v1.2.0/typecho.zip -P /root/data/docker_data/typecho/typecho
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/docker-compose.yml -P /root/data/docker_data/tyepcho
rm $0
