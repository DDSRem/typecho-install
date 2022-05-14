apt update -y
apt install -y wget curl sudo vim git zip 
mkdir -p /root/data/docker_data/typecho
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/mysql.env -P /root/data/docker_data/typecho
mkdir -p /root/data/docker_data/typecho/php
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/Dockerfile -P /root/data/docker_data/typecho/php
mkdir -p /root/data/docker_data/typecho/nginx
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/default.conf -P /root/data/docker_data/typecho/nginx
mkdir -p /root/data/docker_data/typecho/typecho
wget https://github.com/typecho/typecho/releases/download/v1.2.0/typecho.zip -P /root/data/docker_data/typecho/typecho
unzip /root/data/docker_data/typecho/typecho/typecho.zip -d /root/data/docker_data/typecho/typecho
rm -rf /root/data/docker_data/typecho/typecho/typecho.zip
wget https://raw.githubusercontent.com/DDSRem/typecho-install/main/docker-compose.yml -P /root/data/docker_data/typecho
chmod 777 /root/data/docker_data/typecho/typecho/usr/uploads
echo -e "\033[36m cd /root/data/docker_data/typecho \033[0m"
echo -e "\033[36m docker-compose up -d \033[0m"
rm $0
