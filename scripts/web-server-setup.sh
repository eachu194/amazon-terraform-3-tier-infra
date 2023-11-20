#!/bin/bash # means execute as a shell script

# Update the system
sudo yum update -y

# Install Apache HTTP Server (httpd)
sudo yum install httpd -y

# Install Git
sudo yum install git -y

# Clone the repository
git clone https://github.com/cvamsikrishna11/ecommerce-web-app.git

# Copy the files inside the cloned folder to the desired location
sudo cp -r ecommerce-web-app/server1/* /var/www/html/

# To get the current hostname address
echo "<center><p>Running the website from instance host: $(hostname -f)</p></center>" >> /var/www/html/index.html

# Start and enable the HTTP server
sudo systemctl start httpd # start HTTP server
sudo systemctl enable httpd # ensures that even after stop and reboot, httpd stays turned on