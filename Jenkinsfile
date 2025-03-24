pipeline {
    agent {
        docker {
            image 'hashicorp/packer:latest'  // Or a specific version
            args '-t --entrypoint=""'
        }
    }
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/S-Sharma007/Packer_ultranav_work.git'
            }
        }
        stage('Packer Init') {
            steps {
                sh 'packer init aws-ami-v1.pkr.hcl'
            }
        }
        stage('Packer Build') {
            steps {
                sh 'packer build aws-ami-v1.pkr.hcl'
            }
        }
    }
}