pipeline {
    agent any
    stages {
        stage('Install Packer') {
            steps {
                sh 'sudo apt-get update'
                sh 'sudo apt-get install -y packer'
            }
        }
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