pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/S-Sharma007/Packer_ultranav_work.git', branch: 'main'
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