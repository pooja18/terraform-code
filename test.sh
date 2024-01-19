#!/bin/bash

# Install Apache on Ubuntu
sudo yum check-update
sudo yum -y update
# apache installation, enabling and status check
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active
# firewall installation, start and status check
sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl status firewalld | grep Active
# adding http services
sudo firewall-cmd — permanent — add-service=http
# reloading the firewall
sudo firewall-cmd — reload


sudo cat > /var/www/html/index.html << EOF
<html>
<head>
  <title> LUIT </title>
</head>
<body>
  <p> TEAM BLACK TEAM
</body>
</html>
EOF
