echo ssh enter ip address of Azure VM

sudo apt-get update
sudo apt install openjdk-8-jre-headless -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian binary/" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install jenkins -y

sudo systemctl start jenkins
sudo systemctl status jenkins

sudo ufw allow 8080
sudo ufw status

echo if firewall inactive use: 1) sudo ufw allow openSSH & 2) sudo ufw enable
