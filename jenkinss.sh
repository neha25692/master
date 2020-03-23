#! /bin/bash
sudo su
yum install java-1.8.0-openjdk-devel -y
curl --silent --location https://pkg.jenkins.io/redhat-stable/jenkins.repo | sudo tee /etc/yum.rep
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

yum install -y jenkins
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
