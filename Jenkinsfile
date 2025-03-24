// This pipeline automates the initialization and build process for Packer templates.
    agent { label 'linux' }
    agent any
    parameters {
        string(name: 'REPO_URL', defaultValue: 'https://github.com/S-Sharma007/Packer_ultranav_work.git', description: 'Repository URL')
    }
    stages {
        stage('Checkout Code') {
            steps {
        stage('Packer Init') {
            steps {
                script {
                    if (fileExists('aws-ami-v1.pkr.hcl')) {
                        sh 'packer init aws-ami-v1.pkr.hcl'
                    } else {
                script {
                    def initStatus = sh(script: 'packer init aws-ami-v1.pkr.hcl', returnStatus: true)
                    if (initStatus != 0) {
                        error('Packer init failed. Aborting pipeline.')
                    }
                }
                    }
                }
            }
        }
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
