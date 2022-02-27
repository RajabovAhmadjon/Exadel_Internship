# !/bin/bash
sudo apt update
sudo apt install apache2
sudo systemctl enable apache2.service
sudo systemctl start apache2.service

sudo ufw allow 80/tcp comment 'accept Apache'
sudo ufw allow 443/tcp comment 'accept HTTPS connections'

MYOS1=`grep '^VERSION' /etc/os-release | head -1`
MYOS2=`egrep '^(VERSION|NAME)=' /etc/os-release | head -1`
echo "<h2> Hello World !!! </h2><p>OS Info: $MYOS1 - $MYOS2</p><br> Built by Terraform" > index.html
sudo mv index.html /var/www/html

sudo apt install docker.io
sudo snap install docker
docker --version
sudo docker run hello-world
LIST=`sudo docker images`
echo "<form>$LIST</form>">>index.html
sudo mv index.html /var/www/html
