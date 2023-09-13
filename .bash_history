sudo su
clear
ifconfig
reboot
ifconfig
ls 
cd Despliegue/
clear
docker-compose up -d
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker-compose up -d
sudo su 
clear
docker-compose up -d
cd Despliegue/
docker-compose up -d
sudo su
