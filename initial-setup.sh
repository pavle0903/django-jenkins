sudo apt-get update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11
sudo yum install jenkins -y

sudo systemctl daemon-reload

sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl status jenkins

sudo yum install git -y