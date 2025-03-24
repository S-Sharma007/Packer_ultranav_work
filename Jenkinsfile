pipeline {
    agent any
    stages {
        stage("AWS Credentials")
            steps {
                sh "aws s3 ls"
            }
        }
        stage("Building AMI") {
            steps {
                sh "packer init aws-ami-v1.pkr.hcl"
                sh "packer build aws-ami-v1.pkr.hcl"
            }
        }
    }
}