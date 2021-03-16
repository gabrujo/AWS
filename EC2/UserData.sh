#!/bin/bash
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html

#Install an Apache web server (httpd)
#Configure the web server to automatically start on boot
#Activate the Web server
#Create a simple web page
