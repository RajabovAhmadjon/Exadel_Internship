# !/bin/bash
apt update
apt install apache2
systemctl enable apache2.service
systemctl start apache2.service

ufw allow 80/tcp comment 'accept Apache'
ufw allow 443/tcp comment 'accept HTTPS connections'

MYOS1=`grep '^VERSION' /etc/os-release | head -1`
MYOS2=`egrep '^(VERSION|NAME)=' /etc/os-release | head -1`
echo "<h2> Hello World !!! </h2><p>OS Info: $MYOS1 - $MYOS2</p><br> Built by Terraform" > index.html
mv index.html /var/www/html

apt install docker.io
snap install docker
docker --version
docker run hello-world
LIST=`sudo docker images`
echo "<form>$LIST</form>">>index.html
mv index.html /var/www/html
