ssh 'enter ip address of Azure VM'

sudo apt-get update
sudo apt install openjdk-8-jre-headless
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian binary/" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install jenkins

sudo systemctl start jenkins
sudo systemctl status jenkins
