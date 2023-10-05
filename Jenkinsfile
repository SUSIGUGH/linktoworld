pipeline {
    agent any

    stages {
        stage('Clone Git') {
            steps {
                sh 'rm -Rf linktoworld'
              //  sh 'mkdir terraform'
                sh 'git clone -b "dev" "https://${MY_TOKEN}@github.com/SUSIGUGH/linktoworld.git"'
                sh 'ls -ltr'
                //sh 'mv linktoworld/*.tf terraform/'
            }
        }
        
        stage('Terraform Initialization') {
            steps {
                sh 'cd linktoworld'
                sh 'pwd'
                sh 'cd terraform && terraform init && terraform plan && terraform apply -auto-approve'
            }
        }
        
    }
}
