pipeline {
    agent any

    stages {
        stage('Clone Git') {
            steps {
                sh 'rm -Rf linktoworld'
                sh 'git clone -b "tc001" "https://${MY_TOKEN}@github.com/SUSIGUGH/linktoworld.git"'
                sh 'ls -ltr'
            }
        }
        
        stage('Terraform Initialization') {
            steps {
                sh 'cd linktoworld'
                sh 'pwd'
                sh 'cd linktoworld && terraform init && terraform plan && terraform apply -auto-approve && terraform destroy -auto-approve'
            }
        }
        
    }
}
