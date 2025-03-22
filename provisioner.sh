#!/usr/bin/env bash

# Update all packages
sudo yum -y update

# Install Git (required for Jenkins)
sudo yum install -y git

# Install SSM Agent
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl start amazon-ssm-agent
sudo systemctl enable amazon-ssm-agent

# Install CloudWatch Agent
sudo yum install -y https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a start
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a status

# Install AWS Inspector
curl -O https://inspector-agent.amazonaws.com/linux/latest/install
sudo bash install

# Install Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker

# Install OpenJDK 17 (required for Jenkins)
sudo yum install -y java-17-amazon-corretto-devel

# Verify Java installation
java -version

# Configure Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

# Install Jenkins
sudo yum install -y jenkins

# Start and enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Install Maven (optional, for Jenkins builds)
sudo yum install -y maven