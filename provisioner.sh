#!/usr/bin/env bash

# update package
sudo yum -y update

# install git
sudo yum install git -y

# install SSM
sudo yum install https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm -y
#sudo systemctl start amazon-ssm-agent

# install cloudwatch agent
sudo yum install https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm -y
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a start
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a status

# install AWS inspector
curl -O https://inspector-agent.amazonaws.com/linux/latest/install
sudo bash install

#insall docker 
sudo yum install docker -y
sudo systemctl start docker

#install jenkins
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo yum install git -y
sudo yum install maven -y
sudo yum install nodejs -y

#install ansible
sudo amazon-linux-extras install ansible2 -y
sudo yum install python3 -y
sudo alternatives --set python /usr/bin/python3
sudo pip3 install --upgrade pip
sudo pip3 install boto3
sudo pip3 install botocore
sudo pip3 install ansible
sudo pip3 install ansible-lint

#install terraform
sudo yum install yum-utils -y
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform   
sudo yum install jq -y
sudo yum install unzip -y   
sudo yum install python3-pip -y
sudo pip3 install --upgrade pip
sudo pip3 install awscli    
sudo pip3 install aws-sam-cli



