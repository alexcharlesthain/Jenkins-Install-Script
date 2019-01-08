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

sudo ufw allow OpenSSH
sudo ufw enable

sudo ufw status

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
