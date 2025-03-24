pipeline {
    agent any
    
    stages {
        stage('Checkout Code') {
            steps {
                // Your checkout steps here
                git url: 'https://github.com/S-Sharma007/Packer_ultranav_work.git', branch: 'main'
            }
        }
        
        stage('Packer Init') {
            steps {
                // Your packer init steps here
                sh 'packer init template.json'
            }
        }
        
        stage('Packer Build') {
            steps {
                // Your packer build steps here
                sh 'packer build template.json'
            }
        }
    }
}