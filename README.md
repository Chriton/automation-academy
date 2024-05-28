# Automation Academy
Shell scripts and yaml config files for Automation Academy

## Getting Started
The Automation Academy is a series of hands-on labs that teach you how to automate the deployment of infrastructure and 
applications in AWS, create and run GitHub Actions workflows, and more. 

## Prerequisites

### GitHub Account
You will need a GitHub account to complete the labs. If you don't have a GitHub account, you can create one [here](https://github.com/).

### AWS Account
You will need an AWS account to complete the labs. If you don't have an AWS account, you can create one [here](https://aws.amazon.com/).

### A EC2 instance
You will need an EC2 instance to complete the labs. If you don't have an EC2 instance, you can create one [here](https://aws.amazon.com/ec2/).
We recommend using an EC2 instance with the following configuration:
- **Operating System**: Amazon Linux 2 AMI (HVM)
- **Instance Type**: t2.micro
- **Volume Size**: 50 GB
- **Security Group**: Allow SSH (port 22) and HTTP (port 4444) traffic
- **Key Pair**: Create a new key pair and download it to your local machine


## Files

### Shell Scripts
- **[install-docker.sh](install-docker.sh)**: A shell script that installs Docker and Docker Compose on an EC2 instance

### YAML Config Files
- **[docker-compose.yml](docker-compose.yml)**: A Docker Compose file that defines a selenium grid with a hub and two nodes
