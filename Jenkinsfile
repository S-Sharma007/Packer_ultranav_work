pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/S-Sharma007/Packer_ultranav_work.git'
            }
        }
        stage('Packer Init') {
            steps {
                sh '''
                  docker run --rm \
                    -v "${WORKSPACE}:${WORKSPACE}" \
                    -w "${WORKSPACE}" \
                    hashicorp/packer:latest init aws-ami-v1.pkr.hcl
                '''
            }
        }
        stage('Packer Build') {
            steps {
                sh '''
                  docker run --rm \
                    -v "${WORKSPACE}:${WORKSPACE}" \
                    -w "${WORKSPACE}" \
                    hashicorp/packer:latest build aws-ami-v1.pkr.hcl
                '''
            }
        }
    }
}